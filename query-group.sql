--1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS `num_iscritti` , YEAR(`students`.`enrolment_date`) AS `anno`
FROM `students`
GROUP BY YEAR(`students`.`enrolment_date`);

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `num_insegnanti`, `teachers`.`office_address` AS `indirizzo_edificio`
FROM `teachers`
GROUP BY (`teachers`.`office_address`);

--3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) as `media_voti`
FROM `exam_student`
GROUP BY `exam_id`;

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `num_corsi`, `departments`.`name` AS `nome_dipartimento`
FROM `departments`
JOIN `degrees` 
ON `departments`.`id` = `degrees`.`department_id`
GROUP BY  `departments`.`name`;