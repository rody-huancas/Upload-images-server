<?php

class Conectar
{
    protected $dbh;

    protected function Conexion()
    {
        try {
            $local = "localhost";
            $bd = "dropzone";
            $user = "root";
            $password = "rody1999";

            $conectar = $this->dbh = new PDO("mysql:local=$local;dbname=$bd", $user, $password);
            return $conectar;
        } catch (Exception $e) {
            print "¡Error BD!: " . $e->getMessage() . "<br/>";
            die();
        }
    }

    public function set_names()
    {
        return $this->dbh->query("SET NAMES 'utf8'");
    }
}
