<?php

use \CovidDashboard\App\Api\CovidRESTApi as CovidRestApi;
use \CovidDashboard\App\Api\Middleware\AppLoggingMiddleware as RequestLogger;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \RKA\Middleware\IpAddress as ClientIP;
use \Exception as Exception;

require_once '../app/bootstrap.php';

$api = new CovidRestApi();

// initialize dashboard api
try {
  $api->init();
} catch (\Exception $e) {
  throw new Exception("There was a problem initializing the API", 500);
}

// add logging middleware (to be invoked second, once ip address is retrieved);
$api->slim_app->add(new RequestLogger($api->slim_app_container));

// retrieve ip address of client
$api->slim_app->add(new ClientIP(true, []));

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