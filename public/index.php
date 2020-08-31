<?php

use \CovidDashboard\App\Api\CovidRESTApi as CovidRestApi;
use \CovidDashboard\App\Api\Middleware\AppLoggingMiddleware as RequestLogger;
use \CovidDashboard\App\Api\Middleware\JSONMiddleware as JSON;
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

/**
 * 
 * SLIM MIDDLEWARE RULES
 * first in - last out
 * middleswares are invoked in an opposite order
 * to how the are defined in script
 * 
 */

// add middleware to give all resposnes a json header (to be invoked last)
$api->slim_app->add(new JSON());

// add logging middleware (to be invoked second, once ip address is retrieved)
$api->slim_app->add(new RequestLogger($api->slim_app_container));

// add middleware to retrieve ip address of client (to be invoked first)
$api->slim_app->add(new ClientIP(true, []));

// add root route and set response
$api->slim_app->get('/', function (Request $request, Response $response) {
  $message = [
    'message' => 'UK Coronavirus dashboard API ready for requests'
  ];
  $response->getBody()->write(json_encode($message));
  return $response->withStatus(200);
});

//require all routes
require_once '../app/api/routes/stats-routes.php';
require_once '../app/api/routes/info-routes.php';

// run the application 
$api->slim_app->run();