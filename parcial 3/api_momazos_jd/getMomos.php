<?php
    header("Content-Type: application/json");


    require 'conexionMomazos.php';

    $sql = "SELECT * FROM momos";
    $result = $conn->query($sql);

    $momos = [];

    if($result && $result->num_rows > 0){
        while($row = $result->fetch_assoc()){
            $momos[] = $row;
        }
    }

    $conn->close();

    header("Content-Type: application/json");
    echo json_encode($momos);
?>