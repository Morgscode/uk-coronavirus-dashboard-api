<?php

require '../vendor/autoload.php';

//enable cors
if (isset($_SERVER['HTTP_ORIGIN'])) {
  header("Access-Control-Allow-Origin: *");
  header('Access-Control-Allow-Credentials: true');
  header('Access-Control-Max-Age: 86400');    // cache for 1 day
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD']))
    header("Access-Control-Allow-Methods: GET, OPTIONS");
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']))
    header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
  exit(0);
}

define("ENV", "dev");

switch(ENV) {
  case 'dev':
    define("DB_SERVER_NAME", "localhost");
    define("DB_USER", "root");
    define("DB_PASS", "root");
    define("DB_NAME", "uk_covid_statistics");
break;
  case 'prod':
    define("DB_SERVER_NAME", "bqmayq5x95g1sgr9.cbetxkdyhwsb.us-east-1.rds.amazonaws.com");
    define("DB_USER", "ml7dygsiolxcw8yd");
    define("DB_PASS", "ew5uvzl2dp7l3hzy");
    define("DB_NAME", "tdgqb6uz2q4x8c8a");
break;
}



