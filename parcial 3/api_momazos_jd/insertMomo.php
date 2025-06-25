<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'POST'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo POST es permitido']);
    }



    require 'conexionMomazos.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $nombre = $data['nombre'];
    $calificacion = intval($data["calificacion"]);
    $descripcion = $data['descripcion'];
    $autor = $data["autor"];


    $query = $conn->prepare("INSERT INTO momos (nombre, descripcion, calificacion, autor) VALUES (?, ?, ?, ?)");

    if(!$query){
        http_response_code(500);
        echo json_encode(["error" => "Ocurrio un error"]);
        exit;
    }

    $query->bind_param("ssis", $nombre, $descripcion, $calificacion, $autor);

    if($query->execute()){
        echo json_encode(["mensaje" => "Momo insertado correctamente", "ID" => $query->insert_id]);
    } else{
        http_response_code(500);
        echo json_encode(["error" => "Fallo la insercion" . $query->error]);
    }
    $query->close();
    $conn->close();

?>