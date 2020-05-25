<?php 

namespace CovidDashboard\App\Api\Middleware;

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class AppLoggingMiddleware {

  public function __construct($app_container)
  {
    $this->slim_container = $app_container;
  }

  public function __invoke(Request $request, Response $response, $next) {
    $uri = $request->getUri();    
    $this->slim_container->logger->addInfo('request-method: '.$request->getMethod().', full path requested: '.$request->getUri().', host: '.$uri->getHost().', port: '.$uri->getPort());
    $response = $next($request, $response);
    return $response;
  }
  
}
