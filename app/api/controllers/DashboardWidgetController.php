<?php

namespace CovidDashboard\App\Api\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Psr\Container\ContainerInterface as Container;
use \Exception;

class DashboardWidgetController
{
  protected $slim_container;

  public function __construct(Container $container)
  {
    $this->slim_container = $container;
  }

  public function getNHSCovidInfo(Request $request, Response $response)
  {
    $data = $this->slim_container->db_query_manager->getRowByMostRecentEntry('nhs_condition_meta');

    if ($data) {
      // if db row exists, return to front-end
      $response->getBody()->write(json_encode($data));
      return $response->withStatus(200);
    } else {

      try {
        // get nhs and store condition api response
        $api_call = $this->slim_container->nhs_api_interface->updateStoredNHSCovidInfo();

        /**
         * 
         * if the api call fails, lets throw an exception
         * 
         */
        if (!$api_call) :
          throw new Exception("there was a problem updating the nhs covid info in the db: ", 500);
        endif;

        // grab from db
        $data = $this->slim_container->db_query_manager->getRowByMostRecentEntry('nhs_condition_meta');

        $response->getBody()->write(json_encode($data));
        // return new db row to front-end
        return $response;
      } catch (\Exception $e) {

        /**
         * 
         * we log an error message and return a 500 
         * response with the exception message
         * 
         */
        $this->slim_container->logger->error("DashboardWidgetController says: there was a problem making the nhs api call on the live route:");

        $message = [
          "status"      => "fail",
          "status_code" => 500,
          "message"     => $e->getMessage(),
        ];

        $response->getBody()->write(json_encode($message));
        return $response->withStatus(500);
      }
    }
  }

  public function testNHSApiResponse(Request $request, Response $response)
  {
    try {
      // get nhs and store condition api response
      $res = $this->slim_container->nhs_api_interface->getNHSConditionApiResponse('coronavirus-covid-19');
      if (!$res) :
        /**
         * 
         * If the response is false, throw an exception
         * 
         */
        throw new \Exception("there was a problem grabbing the api response for the test");
      endif;
      /**
       * 
       * if no exception is thrown
       * let's return the api response
       * to the client
       * 
       */
      $response->getBody()->write(json_encode($res));
      return $response->withStatus(200);
    } catch (\Exception $e) {

      /**
       * 
       * we log an error message and return a 500 
       * response with the exception message
       * 
       */
      $this->slim_container->logger->error("DashboardWidgetController says: there was a problem making the nhs api call on the test route");

      $message = [
        "status"      => "fail",
        "status_code" => 500,
        "message"     => $e->getMessage(),
      ];

      $response->getBody()->write(json_encode($message));
      return $response->withStatus(500);
    }
  }
}