<?php

require_once('Model.php');

class PrioridadModel extends Model {

  public $prioriry_id;
  public $priority;

  // en el construct sólo se declarará el nombre de la base de datos que usa este proyecto

  public function __construct(){
    $this->db_name = 'cronograma';
  }

  public function create( $priority_data = array() ) {

      foreach ($priority_data as $key => $value) {
        $$key = $value;
      }

      $this->query = "INSERT INTO prioridad (priority_id, priority) VALUES ($priority_id, '$priority')";

      $this->set_query();
  }

  public function read($priority_id = '') {
    $this->query = ($priority_id != '')
    ? "SELECT * FROM prioridad  WHERE priority_id = $priority_id"
    : "SELECT * FROM prioridad";

    $this->get_query();

    $num_rows = count($this->rows);
    //var_dump($num_rows)

    $data = array();

    foreach ($this->rows as $key => $value) {
      $data[$key] = $value;
    }

    return $data;

  }

  public function update($priority_data = array() ){

    foreach ($priority_data as $key => $value) {
      $$key = $value;
    }
    $this->query = "UPDATE prioridad SET priority_id = $priority_id, priority = '$priority' WHERE priority_id = $priority_id";

    $this->set_query();


  }

  public function delete( $priority_id = '') {
      $this->query = "DELETE FROM prioridad WHERE priority_id = $priority_id";

      $this->set_query();  
  }

}
