<?php

require_once __DIR__.'/vendor/autoload.php';

use App\Greeter;

$greeter = new Greeter();
$output = $greeter->greet("Cody");

var_dump("Dude ",$output);
