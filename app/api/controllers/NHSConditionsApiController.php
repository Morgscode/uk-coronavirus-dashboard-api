<?php

namespace CovidDashboard\App\Api\Controllers;

use \CovidDashboard\App\Api\Models\NHSConditionApiMeta as NHSConditionApiMeta;
use GuzzleHttp\Client;

class ConditionsApiController
{

  protected $http_client;
  protected $db_interface;
  protected $api_key;

  public function __construct($db)
  {
    $this->http_client = new Client([
      'base_uri' => 'https://api.nhs.uk/',
      'timeout'  => 2.0
    ]);

    $this->db_interface = $db;
  }

  private function setConditionsApiKey()
  {
    $data = $this->db_interface->getRowByID('admin_user', 1);
    $this->api_key = $data[0]->nhs_conditions_api_key;
  }

  public function getNHSConditionApiResponse($condition)
  {
    $this->setConditionsApiKey();
    $response = $this->http_client->get('conditions/' . $condition, ['headers' => ['Subscription-Key' => $this->api_key]]);

    $body = $response->getBody()->getContents();

    // build model from response to casted array
    $nhs_condition_meta = (array) new NHSConditionApiMeta(json_decode($body));

    return $nhs_condition_meta;
  }

  public function updateStoredNHSCovidInfo()
  {
    $nhs_covid_info = $this->getNHSConditionApiResponse('coronavirus-covid-19');
    //insert into db
    $this->db_interface->insertSingle('nhs_condition_meta', $nhs_covid_info);
  }


}
