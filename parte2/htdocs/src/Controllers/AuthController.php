<?php

namespace Controllers;
use Helpers\JWTAuth;
use Models\User;

class AuthController
{
  public static function LogIn($request, $response, $args)
  {

    $data = json_decode($request->getBody());

    if(!isset($data->nombre) 
    || !isset($data->clave) || !isset($data->sexo))
      return $response->withJson("ingrese nombre, clave, y sexo", 400);

    $user = User::FindByUsernameAndPassword($data->nombre, $data->clave);

    if(is_null($user))
      return $response->withJson("invalid username/password");

    if($user->sexo != $data->sexo)
      return $response->withJson("sexo invalido");

    $tokenObj = ["nombre"=>$user->nombre, "sexo"=>$user->sexo, "rol" => $user->rol];
    return  JWTAuth::CreateToken($tokenObj);
  }

  public static function Register($request, $response, $args)
  {
      $user = new User;
      $validSex = ["masculino", "femenino"];
      $body = $request->getParsedBody();
      if(!isset($body["nombre"]) 
      || !isset($body["clave"]) || !isset($body["sexo"]))
        return $response->withJson("Debe especificar nombre, clave y sexo", 400);
      
      if(!in_array(strtolower($body["sexo"]), $validSex))
        return $response->withJson("invalid sexo: debe ser masculino/femenino");


      $user->nombre = strtolower($body["nombre"]);
      $user->clave = strtolower($body["clave"]);
      $user->sexo = strtolower($body["sexo"]);
      $user->rol = "usuario";
      $user->save();
      return $response->withJson(["message" => "usuario creado", "usuario"=> $user],200);
  }

}
