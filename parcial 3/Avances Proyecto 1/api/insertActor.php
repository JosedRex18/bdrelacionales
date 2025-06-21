<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }



    require 'conexionSakila.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre'];
    $categoria = $data['categoria'];
    $fecha_creacion = $data['fecha_creacion'];
    $tipo_humor = $data['tipo_humor'];

    $query = $conn->prepare("INSERT INTO memes (nombre, categoria, fecha_creacion, tipo_humor) VALUES (?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ss", $nombre, $categoria, $fecha_creacion, $tipo_humor);

    if($query->execute()){
        echo json_encode(["mensaje" => "memes insertado correctamente", "memes_id" => $query->memes_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>