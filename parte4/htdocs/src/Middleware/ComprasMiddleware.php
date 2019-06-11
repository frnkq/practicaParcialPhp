<?php

namespace Middleware;

class ComprasMiddleware extends TokenValidatorMiddleware
{
  public static function ShowCompras($request, $response, $next)
  {
    $data = parent::GetTokenData($request);
    if($data != null)
    {
      if(strtolower($data->rol == "admin"))
      {
        $attributes = ["isAdmin"=>true, "nombre" => $data->nombre];
        return $next($request->withAttributes($attributes), $response);
      }
      $attributes = ["isAdmin"=>false, "nombre" => $data->nombre];
      return $next($request->withAttributes($attributes), $response);
    }
    return $response->withJson("hola", 403);
  }
}
