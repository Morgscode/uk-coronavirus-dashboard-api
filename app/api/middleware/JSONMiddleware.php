<?php

namespace CovidDashboard\App\Api\Middleware;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class JSONMiddleware
{
  /**
   * 
   * This middleware returns all our http responses
   * to the client as JSON. Its the last middleware
   * to be invoked on the stack
   * 
   */
  public function __invoke(Request $request, Response $response, $next)
  {
    $response = $next($request, $response);
    return $response->withHeader("Content-Type", "application/json");
  }
}