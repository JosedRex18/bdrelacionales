<?php
header("Content-Type: application/json");

if ($_SERVER['REQUEST_METHOD'] !== 'PUT') {
    http_response_code(405);
    echo json_encode(['error' => 'Solo metodo PUT es permitido']);
    exit();
}

require 'conexionMomazos.php';

$input = json_decode(file_get_contents('php://input'), true);
$ID = intval($input['ID']);
$nombre = $conn->real_escape_string($input['nombre']);
$calificacion = intval($input['calificacion']);
$descripcion = $conn->real_escape_string($input['descripcion']);
$autor = $conn->real_escape_string($input['autor']);

$query = "UPDATE momos SET nombre = ?, calificacion = ?, descripcion = ?, autor = ?, ID = ?";

$st = $conn->prepare($query);

if (!$st) {
    http_response_code(500);
    echo json_encode(["error" => "Error en la consulta: " . $conn->error]);
    exit();
}

$st->bind_param("sissi", $nombre, $calificacion, $descripcion, $autor, $ID);

if ($st->execute()) {
    if ($st->affected_rows > 0) {
        echo json_encode(["message" => "Momo ha sido actualizado correctamente"]);
    } else {
        http_response_code(404);
        echo json_encode(["error" => "No se encontro el momo con id: $ID"]);
    }
} else {
    http_response_code(500);
    echo json_encode(["error" => "ERROR al ejecutar: " . $st->error]);
}

$st->close();
$conn->close();
?>
