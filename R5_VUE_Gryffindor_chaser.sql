CREATE VIEW Gryffindor AS (
SELECT t.name, w.firstname, w.lastname, pl.role
FROM wizard AS w
LEFT JOIN player as pl
on w.id = pl.wizard_id
LEFT JOIN team AS t
on pl.team_id = t.id
WHERE pl.role = 'chaser'AND t.name = 'gryffindor');