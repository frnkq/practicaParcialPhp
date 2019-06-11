<?php

namespace Controllers;
use Models\Compra;
use Helpers\JWTAuth;
class ComprasController
{
    public static function Comprar($request, $response, $args)
    {
        $body = $request->getParsedBody();
        
        if( !isset($body["articulo"]) || !isset($body["fecha"]) || !isset($body["precio"]) )
        {
            return $response->withJson("debe ingresar articulo/fecha/precio");
        }

        $data = JWTAuth::GetData($request->getHeaders()["HTTP_TOKEN"][0]);

        $compra = new Compra;
        $compra->usuario = $data->nombre;
        $compra->articulo = $body["articulo"];
        $compra->fecha = $body["fecha"];
        $compra->precio = $body["precio"];
        $compra->save();

        return $response->withJson(["message" => "compra exitosa", "compra" => $compra]);
    }
}
