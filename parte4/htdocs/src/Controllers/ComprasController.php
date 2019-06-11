<?php

namespace Controllers;
use Models\Compra;
use Helpers\JWTAuth;
use Helpers\ImagesHelper;
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

        $imageFilename = $compra->id."_".$compra->articulo;
        if(isset($request->getUploadedFiles()["image"]))
        {
            ImagesHelper::SaveImageFromRequest($request, "IMGCompras", "IMGCompras", $imageFilename);
        }

        return $response->withJson(["message" => "compra exitosa", "compra" => $compra]);
    }

    public static function GetAll($request, $response, $args)
    {
        return $response->withJson(Compra::all());
    }

    public static function GetByUsername($request, $response, $args)
    {
        $username = $request->getAttribute("nombre");
        $compras = Compra::GetByUsername($username);
        return $response->withJson($compras, 200);

    }

    public static function GetCompras($request, $response, $args)
    {
        if($request->getAttribute("isAdmin"))
            return self::GetAll($request, $response, $args);
        else
            return self::GetByUsername($request, $response, $args);
    }
}
