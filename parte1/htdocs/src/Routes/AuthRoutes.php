<?php
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use \Slim\App;
use Controllers\AuthController;
return function(App $app)
{
  $app->post('/login', AuthController::class . ':LogIn');
  $app->post('/usuario', AuthController::class . ':Register');
};
