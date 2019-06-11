<?php

namespace Models;
use Illuminate\Database\Eloquent\Model;
use Helpers\AppConfig as Config;
use Helpers\ImagesHelper as Images;
use Illuminate\Database\Capsule\Manager as Capsule;

class Compra extends Model
{
  protected $table = "compras";
  public $timestamps = false;
}
