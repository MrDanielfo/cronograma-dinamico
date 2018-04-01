<?php

require_once('PrioridadModel.php');

class PrioridadController {

   private $model;

   public function __construct() {
     $this->model = new PrioridadModel();
   }

   public function create($priority_data = array() ) {
      return $this->model->create( $priority_data );
   }

   public function read($priority_id = '') {
     return $this->model->read( $priority_id );
   }

   public function update($priority_data = array() ) {
     return $this->model->update( $priority_data );
   }

   public function delete($priority_id = '') {
     return $this->model->delete( $priority_id ); 
   }

}
