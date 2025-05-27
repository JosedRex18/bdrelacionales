<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "David Beltran", "correo" => "david777@gmail.com"],
        ["id" => 1, "nombre" => "Jose Lopez", "correo" => "jose666@gmail.com"],
        ["id" => 1, "nombre" => "Victor Sauceda", "correo" => "viktor123@gmail.com"],
    ];

    echo json_encode($usuarios);

?>