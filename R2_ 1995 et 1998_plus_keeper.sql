SELECT w.firstname, w.lastname
FROM wizard AS w
WHERE w.id IN (SELECT wizard_id
               FROM player AS pl
               WHERE pl.enrollment_date >= '1995-01-01'AND pl.enrollment_date <= '1998-12-31'
               AND pl.role = 'keeper');