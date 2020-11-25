<?php

require '../vendor/autoload.php';

// set environment
define("ENV", "dev");

// define STDERR in line with php warning
if (!defined('STDERR')) define('STDERR', fopen('php://stderr', 'wb'));

// assess env and set further application variables
switch (ENV) {
  case "dev":

    //enable cors for local dev client || postman
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

    // creates logs dir if not existing
    if (!is_dir(dirname(__FILE__) . '/logs')) :
      mkdir(dirname(__FILE__) . '/logs');
    endif;

    break;
  case "prod":

    //enable cors for front-end client
    if (isset($_SERVER['HTTP_ORIGIN'])) {
      header("Access-Control-Allow-Origin: https://www.ukcoronavirusstatistics.com");
      header('Access-Control-Allow-Credentials: true');
      header('Access-Control-Max-Age: 86400');    // cache for 1 day
    }

    // define live db props
    define("DB_SERVER_NAME", getenv('HEROKU_DB_SERVER'));
    define("DB_USER", getenv('HEROKU_DB_USER'));
    define("DB_PASS", getenv('HEROKU_DB_PASS'));
    define("DB_NAME", getenv('HEROKU_DB_NAME'));

    break;
}

// Access-Control headers are received during OPTIONS requests
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_METHOD'])) :
    header("Access-Control-Allow-Methods: GET, OPTIONS");
  endif;
  if (isset($_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS'])) :
    header("Access-Control-Allow-Headers: {$_SERVER['HTTP_ACCESS_CONTROL_REQUEST_HEADERS']}");
  endif;
  exit(0);
}