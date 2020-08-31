<?php

namespace CovidDashboard\App\Api\Middleware;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class JSONMiddleware
{

  public function __construct()
  {
  }

  public function __invoke(Request $request, Response $response, $next)
  {
    $response = $next($request, $response);
    return $response->withHeader("Content-Type", "application/json");
  }
}