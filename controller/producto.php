<?php
require_once("../config/conexion.php");

require_once("../models/Producto.php");
$producto = new Producto();

switch ($_GET["op"]) {
    case "guardar":
        $datos = $producto->insert_producto($_POST["prod_nom"]);

        if (empty($_FILES['file']['name'])) {
        } else {
            foreach ($datos as $row) {
                $countfiles = count($_FILES['file']['name']);
                $ruta = "../assets/img/" . $row["prod_id"] . "/";
                $files_arr = array();

                if (!file_exists($ruta)) {
                    mkdir($ruta, 0777, true);
                }

                for ($index = 0; $index < $countfiles; $index++) {
                    $nombre_original = $_FILES['file']['name'][$index];
                    $nombre_uniqid = uniqid();
                    $nombre = $nombre_uniqid . '_' . $nombre_original;
                    $destino = $ruta . $nombre;

                    $producto->insert_imagenes($row["prod_id"], $nombre);

                    move_uploaded_file($_FILES['file']['tmp_name'][$index], $destino);
                }
            }
        }

        echo json_encode($datos);

        break;
}
