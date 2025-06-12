<?php
    header("Content-Type: application/json");
    header("Access-Control-Allow-Origin: *");

    $usuarios=[
        ["id" => 1, "nombre" => "Guillermo Wong", "Correo" => "wong@gmail.com"],
        ["id" => 1, "nombre" => "Horus Zazueta", "Correo" => "horus@gmail.com"],
        ["id" => 1, "nombre" => "Ana Sofia", "Correo" => "sofia@gmail.com"],
    ];

    echo json_encode($usuarios);
    
?>