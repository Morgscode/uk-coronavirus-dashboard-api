<?php

namespace CovidDashboard\App\Api\Middleware;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;
use \Psr\Container\ContainerInterface as Container;

class DBConnectionMiddleWare
{

  public function __construct(Container $app_container)
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
   * this will invoked with each http request the api 
   * recieves past it's root route, as each successful 
   * response to the client on these routes needs db data
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