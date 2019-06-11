<?php

namespace Middleware;

use Models\Audit;

class AuditMiddleware extends TokenValidatorMiddleware
{
  public static function Audit($request, $response, $next)
  {
    $data = parent::GetTokenData($request);
    $usuario = "guest";
    if($data != null)
    {
            $usuario = $data->nombre;
    }
    $audit = new Audit;
    $audit->usuario = $usuario;
    $audit->metodo = $request->getAttribute('route')->getMethods()[0]; 
    $audit->ruta = $request->getUri()->getPath();
    $audit->hora = date('His');
    $audit->save();
    
    return $next($request, $response);
  }
}
