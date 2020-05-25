<?php

use \CovidDashboard\App\Api\CovidRESTApi as CovidRestApi;
use \CovidDashboard\App\Api\MiddleWare\AppLoggingMiddleware as RequestLogger;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require_once '../app/bootstrap.php';

$api = new CovidRestApi();

// initialize dashboard api
$api->init();

// add logging middle ware (to be invoked first)
$api->slim_app->add(new RequestLogger($api->slim_app_container));

// add route route and set response
$api->slim_app->get('/', function (Request $request, Response $response) {
  $message = [
    'message' => 'UK Coronavirus dashboard API ready for requests!'
  ];
  $response->getBody()->write(json_encode($message));
  return $response->withHeader("Content-Type", "application/json");
});

//require all routes
require_once '../app/api/routes/stats-routes.php';

require_once '../app/api/routes/info-routes.php';

$api->slim_app->run();
