<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    require 'conexionSakila.php';

    $input = json_decode(file_get_contents('php://input'), true);   
    $memes_id = intval($input["memes_id"]);
    $nombre = $conn->real_escape_string($input['nombre']);
    $categoria = $conn->real_escape_string($input['categoria']);
    $fecha_creacion = $conn->real_escape_string($input['fecha_creacion']);
    $tipo_humor = $conn->real_escape_string($input['tipo_humor']);


    $query = "UPDATE memes SET nombre = ?, categoria = ?, fecha_creacion = ?, tipo_humor = ?,  last_update = NOW() WHERE memes_id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" - $conn->error]);
        exit();
    }
    
    $st->bind_param("ssi", $first_name, $last_name, $memes_id);

    if($st->execute()){
        if($st->affected_rows > 0){
            echo json_encode(["message" => "memes actualizado correctamente"]);
        }else{
            http_response_code(500);
            echo json_encode(["error" => "No se encontro el memes con id: $memes_id"]);
        }
    }else{
        http_response_code(500);
        echo json_encode(["error" => "ERROR al ejecutar" - $st->error]);
    }
    $st->close();
?>