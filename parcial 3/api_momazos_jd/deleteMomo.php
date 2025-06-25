<?php
    header("Content-Type: application/json");

    if($_SERVER['REQUEST_METHOD'] !== 'DELETE'){
        http_response_code(405);
        echo json_encode(['error' => 'Solo metodo DELETE es permitido']);
    }

    require 'conexionMomazos.php';

    $input = json_decode(file_get_contents('php://input'), true);   
    $ID = intval($input["ID"]);

    $query = "DELETE FROM momos WHERE ID =?";

    $st = $conn->prepare($query);
    
    if(!$st){
        http_response_code(500);
        echo json_encode(["error" => "Error en la consulta" - $conn->error]);
        exit();
    }
    
    $st->bind_param("i", $ID);
    $st->execute();

    if($st->affected_rows > 0){
        echo json_encode(["message" => "Momo ha sido eliminado correctamente"]);
    }else{
        http_response_code(404);
        echo json_encode(["error" => "No se encontro el momo con la id: $ID"]);
    }
    $st->close();
?>