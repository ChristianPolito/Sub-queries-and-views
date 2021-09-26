CREATE VIEW Joueurséquipe AS
(SELECT t.name, pl.role, COUNT(pl.role)
FROM team AS t
LEFT JOIN player AS pl
ON t.id = pl.team_id
);