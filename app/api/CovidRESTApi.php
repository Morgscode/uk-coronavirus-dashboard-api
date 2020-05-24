<?php

namespace CovidDashboard\App\Api;

use \CovidDashboard\App\Core\Database\MySQLDataBaseConnection;
use \CovidDashboard\App\Core\Database\MySQLDatabaseQueryManager;
use \CovidDashboard\App\Api\Controllers\ConditionsApiController as ConditionsApiController;
use \CovidDashboard\App\Api\Controllers\DashboardInfoController;
use CovidDashboard\App\Api\Controllers\DashboardStatisticsController;

class CovidRESTApi
{

  public $slim_app;
  protected $slim_app_container;
  protected $db_interface;

  public function __construct()
  {
    $this->slim_app = new \Slim\App;
    $this->slim_app_container = $this->slim_app->getContainer();
  }

  private function injectDbInterface()
  {
    $this->slim_app_container['db_query_manager'] = function ($c) {
      $db = new MySQLDataBaseConnection(DB_SERVER_NAME, DB_USER, DB_PASS, DB_NAME);
      $db->connect();
      $query_manager = new MySQLDatabaseQueryManager($db->conn);
      return $query_manager;
    };
  }

  private function injectNHSApiController() 
  {
    $this->slim_app_container['nhs_api_interface'] = function ($c) {
      $nhs_api_interface = new ConditionsApiController($this->slim_app_container->db_query_manager);
      return $nhs_api_interface;
    }; 
  }

  private function injectStatisticsContoller() 
  {
    $this->slim_app_container['StatsController'] = function ($c) {
      $stats_controller = new DashboardStatisticsController($this->slim_app_container->db_query_manager);
      return $stats_controller;
    };
  } 

  private function injectDashBoardInfoController()
  {
    $this->slim_app_container['DashboardInfoController'] = function ($c) {
      $info_controller = new DashboardInfoController($this->slim_app_container);
      return $info_controller;
    };
  }

  public function init()
  { 
    $this->injectDbInterface();
    $this->injectNHSApiController();
    $this->injectStatisticsContoller();
    $this->injectDashBoardInfoController();
  }
}
