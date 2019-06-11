<?php
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use \Slim\App;
use Middleware\AuthMiddleware;
use Controllers\ComprasController; 
return function(App $app)
{
  $app->post('/compra', ComprasController::class . ':Comprar')->add(AuthMiddleware::class . ":IsLoggedIn");
};
