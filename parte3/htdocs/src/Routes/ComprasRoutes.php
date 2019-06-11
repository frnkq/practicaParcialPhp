<?php
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use \Slim\App;
use Middleware\AuthMiddleware;
use Middleware\ComprasMiddleware;
use Controllers\ComprasController; 
return function(App $app)
{
  $app->post('/compra', ComprasController::class . ':Comprar')->add(AuthMiddleware::class . ":IsLoggedIn");
  $app->get('/compra', ComprasController::class . ":GetCompras")->add(ComprasMiddleware::class . ':ShowCompras');
};
