/* Base de datos para el cronograma de actividades */

DROP DATABASE IF EXISTS cronograma;

CREATE DATABASE IF NOT EXISTS cronograma;

USE cronograma;

/* Tabla catálogo */

CREATE TABLE prioridad(
  priority_id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  priority VARCHAR(55) NOT NULL
);


CREATE TABLE proyectos(
  project_id CHAR(2) PRIMARY KEY,
  title VARCHAR(80) NOT NULL,
  priority INTEGER UNSIGNED NOT NULL,
  time_dev VARCHAR(55) DEFAULT '2 semanas',
  category ENUM('Curso', 'Proyecto Propio'),
  FULLTEXT KEY search(title, time_dev),
  FOREIGN KEY (priority) REFERENCES prioridad(priority_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO prioridad (priority_id, priority) VALUES
(1, 'Terminado'),
(2, 'Alta'),
(3, 'Media'),
(4, 'Baja'),
(5, 'Sin definir');
