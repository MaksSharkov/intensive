IF (SELECT *
		FROM Projects
		WHERE name LIKE 'Список задач') IS NULL
BEGIN
	INSERT INTO Projects (name)
	VALUES ('Список задач')
END;

INSERT INTO Tasks (name, completed, project_id)
SELECT pr.name, 0, @@IDENTITY 
FROM Projects pr
WHERE pr.name NOT IN
	(SELECT ts.name
		FROM Tasks ts) OR pr.name IN 
								(SELECT ts.name
									FROM Tasks ts
									WHERE ts.project_id NOT LIKE @@IDENTITY)