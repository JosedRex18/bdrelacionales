<?php
    header("Content-Type application/json");
    if($_SERVER['REQUEST_METHOD'] !== 'PUT'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    }

    //conectar a la BD salida
    require 'conexionSakila.php'

    $data = json_encode(file_get_contents('php://input'), true);
    $actor_id = intval($input["actor_id"]);
    $first_name = $conn->real_escape_string($input["first name"]);
    $last_name = $conn->real_escape_string($input["last name"]);

    $query = "UPDATE actor SET first_name = ?, last_name = ?, last_update = NOW() WHERE actor_id = ?";

    $st = $conn->prepare($query);

    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" . $conn->error]);
        exit();
    }

    $st-bind_param("ssi", $first_name, $last_name, $actor_id);

    if($st->execute()){
        if($st->affected rows > 0){
            echo json_encode(["error" => "Actor actualizado correctamente" . $st->error]);
        }else{
            http_response_code(400);
            echo json_encode(["error" => "No se encontro al actor con id: $actor_id"])
        }
    }else{
        http_response_code(500);
        echo json_encode(["erro" => "Error al ejecutar" . $st->error]);
    }
    $st->close();
    $conn->close();
?>