<?php

abstract class Model {
    // atributos

    private static $db_host =  'localhost';
    private static $db_user =   'root';
    private static $db_pass =   'root';
    private static $db_charset = 'utf-8';
    protected $db_name;

    private $conexion;
    protected $query;
    protected $rows = array();

    // métodos de CRUD

    abstract protected function create();
    abstract protected function read();
    abstract protected function update();
    abstract protected function delete();

    private function conn_open(){
        $this->conexion = new mysqli(
            self::$db_host,
            self::$db_user,
            self::$db_pass,
            $this->db_name
            // llevan coma porque son parámetros
            // db_name lleva $this porque no es estática 
        );

        $this->conexion->set_charset(self::$db_charset);
    }

    private function conn_close(){
        $this->conexion->close();
    }

    protected function set_query(){
      /* iniciar conexión */
      $this->conn_open();
      // si se usa this, el atributo o método no lleva $
      // si se usa self:: el atributo sí la lleva
      $this->conexion->query($this->query);

      $this->conn_close();

    }

    protected function get_query(){

      $this->conn_open();

      $result = $this->conexion->query($this->query);

        while($this->rows[] = $result->fetch_assoc() );

          $result->close();

     $this->conn_close();

     return array_pop($this->rows);

    }

}
