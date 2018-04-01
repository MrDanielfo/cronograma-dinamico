<?php

require_once('PrioridadController.php');

$priority = new PrioridadController();

echo '<h1>Hola desde Prioridad View, todo está bien</h1>';

$r_priority = $priority->read();

$num_priority = count($r_priority);

echo "<h2>Actualmente se tienen $num_priority prioridades</h2>";

echo "<h3>Lectura de Prioridades</h3>";

echo '<table>
      <tr>
        <th>Prioridad ID</th>
        <th>Prioridad</th>
      </tr>';
    for($i = 0; $i < $num_priority; $i++) {
      echo '<tr>
            <td>'. $r_priority[$i]['priority_id'] .'</td>
            <td>'. $r_priority[$i]['priority'] .'</td>
           </tr>';
    }

  echo '</table><hr />';

echo '<h2>Inserción de Prioridad</h2>';

$new_priority = array(
  'priority_id' => 0,
  'priority'   => 'Iniciada'
);

//$c_priority = $priority->create($new_priority);
echo '<hr />';

echo '<h2>Update de Prioridad</h2>';

$update_priority = array(
  'priority_id' => 6,
  'priority'  => 'En curso'
);

//$u_priority = $priority->update($update_priority);

echo '<hr />';

echo '<h2>Delete de Prioridad</h2>';

//$d_priority = $priority->delete(6);
