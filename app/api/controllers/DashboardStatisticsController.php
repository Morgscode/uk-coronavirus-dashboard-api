<?php

namespace CovidDashboard\App\Api\Controllers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class DashboardStatisticsController
{

  protected $slim_container;
  protected $db_interface;

  public function __construct($container)
  {
    $this->slim_container = $container;
    $this->db_interface = $this->slim_container->db_query_manager;
  }

  public function getAllCovidDeaths(Request $request, Response $response)
  {
    $data = $this->db_interface->getAll('uk_daily_covid_deaths');
    $response->getBody()->write(json_encode($data));
    return $response;
  }

  public function getAllCovidCases(Request $request, Response $response)
  {
    $data = $this->db_interface->getAll('uk_daily_covid_cases');
    $response->getBody()->write(json_encode($data));
    return $response;
  }

  public function getLatestCovidDeathStats(Request $request, Response $response)
  {
    $data = $this->db_interface->getRowByMostRecentDateEntry('uk_daily_covid_deaths');
    $response->getBody()->write(json_encode($data));
    return $response;
  }

  public function getLatestCovidCasesStats(Request $request, Response $response)
  {
    $data = $this->db_interface->getRowByMostRecentDateEntry('uk_daily_covid_cases');
    $response->getBody()->write(json_encode($data));
    return $response;
  }
}