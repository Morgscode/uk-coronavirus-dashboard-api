<?php

namespace CovidDashboard\App\Api\Controllers;

use \CovidDashboard\App\Api\Models\NHSConditionApiMeta as NHSConditionApiMeta;
use \Psr\Container\ContainerInterface as Container;
use GuzzleHttp\Client;
use \Exception;

class ConditionsApiController
{

  protected $http_client;
  protected $db_interface;
  protected $logger;
  protected $api_key;

  public function __construct(Container $container)
  {
    $this->http_client = new Client([
      'base_uri' => 'https://api.nhs.uk/',
      'timeout'  => 2.0
    ]);

    $this->db_interface = $container->db_query_manager;
    $this->logger = $container->logger;
  }

  private function setConditionsApiKey()
  {
    try {
      $data = $this->db_interface->getRowByID('admin_user', 1);
      $this->api_key = $data[0]->nhs_conditions_api_key;

      if (!$this->api_key) :
        throw new Exception("there was a problem setting the api key");
      endif;
    } catch (\PDOException $e) {
      $this->logger->error("there was a problem seeting the api key : " . $e->getMessage() . " the error occured in: " . $e->getFile() . "on line " . $e->getLine());
    }
  }

  public function getNHSConditionApiResponse($condition)
  {
    // set api key
    $this->setConditionsApiKey();

    try {
      // make a guzzle request to the nhs condtions api
      $response = $this->http_client->get('conditions/' . $condition, ['headers' => ['Subscription-Key' => $this->api_key]]);

      // let's take a look at the guzzle response status code
      $status = $response->getStatusCode();

      /**
       * 
       * if we dont get a good response, 
       * we need to throw the exception
       * 
       */

      if ($status !== 200) :
        throw new Exception("ConditionsApiController says: there was a problem when making a request to the NHS conditions api... we were expecting a 200 response", 500);
      endif;

      // if the exception isn't thrown, retrieve the response body
      $body = $response->getBody()->getContents();

      // build model from response to casted array
      $nhs_condition_meta = (array) new NHSConditionApiMeta(json_decode($body));

      // return new array for db insertion
      return $nhs_condition_meta;
    } catch (\Exception $e) {
      /**
       * 
       * let's write the exception message 
       * to the logs and bail
       * 
       */
      $this->logger->warning($e->getMessage());
      return false;
    }
  }

  public function updateStoredNHSCovidInfo()
  {
    try {
      $nhs_covid_info = $this->getNHSConditionApiResponse('coronavirus-covid-19');

      if (!$nhs_covid_info) {
        throw new Exception("ConditionsApiController says: there was a problem making the nhs api call. the response wasn't the expected array", 500);
      }
      /**
       * 
       * if no exception is thrown, 
       * lets insert into db and return true
       * to let the dashboard controller know
       * the update was a success
       * 
       */
      $this->db_interface->insertSingle('nhs_condition_meta', $nhs_covid_info);
      return true;
    } catch (\Exception $e) {
      /**
       * 
       * let's write the exception message 
       * to the logs and bail to let the 
       * controller know the update failed
       * 
       */
      $this->logger->error($e->getMessage());
      return false;
    }
  }
}