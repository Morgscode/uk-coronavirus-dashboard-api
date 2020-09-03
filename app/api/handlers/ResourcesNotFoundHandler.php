<?php

namespace CovidDashboard\App\Api\Handlers;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Exception;

class ResourcesNotFoundHandler
{
  /**
   * 
   * custom error handler for production mode
   * Hides all errors, and sends a standard 500 response to client
   * 
   */
  public function __invoke(Request $request, Response $response, Exception $exception)
  {
    $message = [
      "status"      => "fail",
      "status_code" => 500,
      "message"     => "There was a problem fetching the dashboard resources",
    ];

    $response->getBody()->write(json_encode($message));

    return $response->withHeader('Content-Type', 'application/json')->withStatus(500);
  }
}