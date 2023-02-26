<?php

class Producto extends Conectar
{
    public function insert_producto($prod_nom)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO tm_producto (prod_id,prod_nom) VALUES (NULL,?);";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $prod_nom);
        $sql->execute();

        $sql1 = "SELECT last_insert_id() as 'prod_id'";
        $sql1 = $conectar->prepare($sql1);
        $sql1->execute();
        return $resultado = $sql1->fetchAll(pdo::FETCH_ASSOC);
    }

    public function insert_imagenes($prod_id, $imgd_nom)
    {
        $conectar = parent::conexion();
        parent::set_names();
        $sql = "INSERT INTO td_imagen (imgd_id,prod_id, imgd_nom) VALUES (NULL,?,?);";
        $sql = $conectar->prepare($sql);
        $sql->bindParam(1, $prod_id);
        $sql->bindParam(2, $imgd_nom);
        $sql->execute();
    }
}
