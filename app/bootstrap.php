<?php

require '../vendor/autoload.php';

// set environment
define("ENV", "dev");

// define STDERR in line with php warning
if(!defined('STDERR')) define('STDERR', fopen('php://stderr', 'wb'));
 
// assess env and set further application variables
switch(ENV) {
  case "dev":

    //enable cors for local dev
    if (isset($_SERVER['HTTP_ORIGIN'])) {
      header("Access-Control-Allow-Origin: http://localhost:4200");
      header('Access-Control-Allow-Credentials: true');
      header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // define local db props
    define("DB_SERVER_NAME", "localhost");
    define("DB_USER", "root");
    define("DB_PASS", "root");
    define("DB_NAME", "uk_covid_statistics");
  
break;
  case "prod":

    //enable cors for front-end client
    if (isset($_SERVER['HTTP_ORIGIN'])) {
      header("Access-Control-Allow-Origin: https://ukcoronavirusstatistics.com");
      header('Access-Control-Allow-Credentials: true');
      header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // define live db props
    define("DB_SERVER_NAME", "bqmayq5x95g1sgr9.cbetxkdyhwsb.us-east-1.rds.amazonaws.com");
    define("DB_USER", "ml7dygsiolxcw8yd");
    define("DB_PASS", "ew5uvzl2dp7l3hzy");
    define("DB_NAME", "tdgqb6uz2q4x8c8a");
    
break;
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
    header("Access-Control-Allow-Methods: GET, OPTIONS");
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
    header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
  exit(0);
}



