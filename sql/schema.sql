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
  time_dev VARCHAR(55) NOT NULL,
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

INSERT INTO proyectos (project_id, title, priority, time_dev, category) VALUES

('01', 'Plantilla Cómic - Primera Fase', 1, '3 semanas', 'Proyecto Propio'),
('02', 'Symfony Blog', 2, '5 semanas', 'Curso'),
('03', 'POO Mexflix', 3, '6 semanas', 'Curso'),
('04', 'Angular (Typescript)', 3, '1 Semana', 'Curso'),
('05', 'Git', 2, '3 Semanas', 'Curso'),
('06', 'Plantilla Car', 2, '2 Semanas', 'Proyecto Propio'),
('07', 'Control de Tareas con Symfony', 5, 'No definido', 'Proyecto Propio'),
('08', 'JavaScript Moderno', 3, '6 semanas', 'Curso'),
('09', 'Vikingo Template', 3, '2 semanas', 'Proyecto Propio'),
('10', 'SQL EdTeam', 5, 'No definido', 'Curso'),
('11', 'Laravel APIs', 4, '5 semanas', 'Curso'),
('12', 'Frontend Angular - Backend Symfony', 3, '5 semanas', 'Curso'),
('13', 'Desarroll Web Completo', 3, '9 semanas', 'Curso'),
('14', 'WooComerce', 4, '5 semanas', 'Curso'),
('15', 'Cuarta Plantilla (Landing-Page)', 3, '10 días', 'Proyecto Propio'),
('16', 'Quinta Plantilla (Landing-Page)', 3, '10 días', 'Proyecto Propio'),
('17', 'Fullstack Angular y Symfony', 4, '8 semanas', 'Curso'),
('18', 'Sexta Plantilla (Landing-Page)', 3, '10 días', 'Proyecto Propio'),
('19', 'Práctica con API del Inegi', 3, 'Constante', 'Proyecto Propio'),
('20', 'API para periodistas', 5, 'No definido', 'Proyecto Propio'),
('21', 'Angular Completo', 4, '8 semanas', 'Curso'),
('22', 'Cronograma', 2, 'Constante', 'Proyecto Propio'),
('23', 'Node Js MirCha', 4, '8 semanas', 'Curso');
