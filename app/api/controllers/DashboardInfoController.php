<?php 

namespace CovidDashboard\App\Api\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Psr\Container\ContainerInterface as Container;

class DashboardInfoController {
  protected $slim_container;

  public function __construct(Container $container) 
  {
    $this->slim_container = $container;
  }

  public function getNHSCovidInfo(Request $request, Response $response) {
    
    $data = $this->slim_container->db_query_manager->getRowByMostRecentEntry('nhs_condition_meta');
    
    if ($data) {
       // if db row exists, return to front-end
        $response->getBody()->write(json_encode($data));
        return $response;
    
    } else {
        // get nhs and store condition api response
        $this->slim_container->nhs_api_interface->updateStoredNHSCovidInfo();
        // grab from db
        $data = $this->slim_container->db_query_manager->getRowByMostRecentEntry('nhs_condition_meta');
        
        $response->getBody()->write(json_encode($data));
        // return new db row to front-end
        return $response;
    }

  }

}