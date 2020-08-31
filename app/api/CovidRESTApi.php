<?php

namespace CovidDashboard\App\Api;

use \CovidDashboard\App\Core\Database\MySQLDataBaseConnection;
use \CovidDashboard\App\Core\Database\MySQLDatabaseQueryManager;
use \CovidDashboard\App\Api\Controllers\ConditionsApiController;
use \CovidDashboard\App\Api\Controllers\DashboardWidgetController;
use \CovidDashboard\App\Api\Controllers\DashboardStatisticsController;
use \Monolog\Logger;
use \Monolog\Handler\StreamHandler;


class CovidRESTApi
{
  public $slim_app;
  public $slim_app_container;
  protected $db_interface;

  public function __construct()
  {
    $config['displayErrorDetails'] = (ENV === 'dev') ? true : false;
    $this->slim_app = new \Slim\App(['settings' => $config]);
    $this->slim_app_container = $this->slim_app->getContainer();
  }

  private function injectAppLooger()
  {
    $this->slim_app_container['logger'] = function ($c) {
      $logger = new Logger('uk-covid-dashboard-api-logger');
      $log_location = (ENV == 'prod') ? STDERR : '../app/logs/app.log';
      $file_handler = new StreamHandler($log_location);
      $logger->pushHandler($file_handler);
      return $logger;
    };
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
      $stats_controller = new DashboardStatisticsController($this->slim_app_container);
      return $stats_controller;
    };
  }

  private function injectDashboardWidgetController()
  {
    $this->slim_app_container['DashboardWidgetController'] = function ($c) {
      $info_controller = new DashboardWidgetController($this->slim_app_container);
      return $info_controller;
    };
  }

  public function init()
  {
    $this->injectAppLooger();
    $this->injectDbInterface();
    $this->injectNHSApiController();
    $this->injectStatisticsContoller();
    $this->injectDashboardWidgetController();
  }
}