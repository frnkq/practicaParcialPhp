<?php

namespace Controllers;
use Helpers\JWTAuth;
use Models\User;

class UsersController
{
    public static function GetAll($request, $response, $args)
    {
        return $response->withJson(User::all(), 200);
    }
}
