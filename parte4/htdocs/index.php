<?php

use Illuminate\Database\Capsule\Manager as Capsule;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Message\ResponseInterface as Response;
use Helpers\AppConfig;
use Models\Mesa;
use Models\Pedidos\PedidoCocina;
use Middleware\AuditMiddleware;
require __DIR__.'/vendor/autoload.php';
ini_set("max_input_vars", 50000);
$config = ['settings' => ['displayErrorDetails' => true, 'determineRouteBeforeAppMiddleware' => true]];

$app = new \Slim\App($config);

$capsule = new Capsule;
$capsule->addConnection(AppConfig::$db);
$capsule->setAsGlobal();
$capsule->bootEloquent();

$authRoutes = require __DIR__.'/src/Routes/AuthRoutes.php';
$authRoutes($app);


$comprasRoutes = require __DIR__.'/src/Routes/ComprasRoutes.php';
$comprasRoutes($app);
$app->add(AuditMiddleware::class .':Audit');
$app->run();
