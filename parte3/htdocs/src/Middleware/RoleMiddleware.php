<?php

namespace Middleware;

class RoleMiddleware extends TokenValidatorMiddleware
{
  public static function IsAdmin($request, $response, $next)
  {
    $data = parent::GetTokenData($request);
    if($data != null)
    {
      if(strtolower($data->rol == "admin"))
      {
        return $next($request, $response);
      }
    }
    return $response->withJson("hola", 403);
  }
}
