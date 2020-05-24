<?php

use \CovidDashboard\App\Api\CovidRESTApi as CovidRestApi;
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require_once '../app/bootstrap.php';

$api = new CovidRestApi();

$api->init();

$api->slim_app->get('/', function (Request $request, Response $response) {
  $message = [
    'message' => 'COVID API ready for requests!'
  ];
  $response->getBody()->write(json_encode($message));
  return $response;
});

require_once '../app/api/routes/stats-routes.php';

require_once '../app/api/routes/info-routes.php';

$api->slim_app->run();
