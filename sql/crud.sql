/* Operaciones CRUD */

/* Crear proyecto */

INSERT INTO proyectos SET project_id = "24", title = 'Mi blog con laravel 5', priority = 3, time_dev = '3 semanas', category = 'Proyecto Propio';

/* Actualizar proyecto */

UPDATE proyectos SET title = 'Mi organizador con Laravel 5', priority = 4, time_dev = '2 semanas' WHERE project_id = '24';

UPDATE proyectos SET priority = 1 WHERE project_id = '02';

/* Borrar proyecto */

DELETE FROM proyectos WHERE project_id = '24';

/* Buscar todos los proyectos */

SELECT pj.project_id, pj.title, pj.time_dev, pj.category, pr.priority FROM proyectos AS pj INNER JOIN prioridad AS pr ON pj.priority = pr.priority_id;

/* Buscar proyecto por nombre y tiempo de desarrollo */

SELECT pj.project_id, pj.title, pj.time_dev, pj.category, pr.priority FROM proyectos AS pj INNER JOIN prioridad AS pr ON pj.priority = pr.priority_id WHERE MATCH(pj.title, pj.time_dev) AGAINST('javascript' IN BOOLEAN MODE);

/* Buscar proyecto por categoría */

SELECT pj.project_id, pj.title, pj.time_dev, pj.category, pr.priority FROM proyectos AS pj INNER JOIN prioridad AS pr ON pj.priority = pr.priority_id WHERE pj.category = 'Curso';

/* Buscar proyecto por prioridad */

SELECT pj.project_id, pj.title, pj.time_dev, pj.category, pr.priority FROM proyectos AS pj INNER JOIN prioridad AS pr ON pj.priority = pr.priority_id WHERE pj.priority = 3;

/* Acciones CRUD para la tabla prioridad */

/* Insertar prioridad */

INSERT INTO prioridad SET priority_id = 0, priority = 'Iniciada';

/* Actualizar prioridad */

UPDATE prioridad SET priority = 'En desarrollo' WHERE priority_id = 6;

/* Borrar prioridad */

DELETE FROM prioridad WHERE priority_id = 6;

/* BUSCAR prioridad */

SELECT * FROM prioridad;

/* Buscar prioridad POR priority_id */

SELECT * FROM prioridad WHERE priority_id = 2;
