<?php

namespace CovidDashboard\App\Api\Middleware;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class DBConnectionMiddleWare
{

  public function __construct($app_container)
  {
    $this->slim_container = $app_container;
  }

  /**
   * 
   * with each incoming http request, we need 
   * to ensure there is a db connection, but this error 
   * can't be handled by our default handler so we 
   * need to hide the SLIM error from the client
   * 
   * this will invoked in prod mode and trigger
   * errors where db queries are made outside of try catch blocks
   * 
   * @param object $db;
   * 
   */

  public function __invoke(Request $request, Response $response, $next)
  {
    $db = $this->slim_container->db_query_manager;

    if (!$db) :

      $message = [
        "status"      => "fail",
        "status_code" => 500,
        "message"     => "there's a database connection issue",
      ];

      $response->getBody()->write(json_encode($message));
    else :
      $response = $next($request, $response);
      return $response;
    endif;
  }
}