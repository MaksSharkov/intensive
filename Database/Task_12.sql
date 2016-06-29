INSERT INTO Projects (name)
VALUES ('Список задач')

INSERT INTO Tasks (name, completed, project_id)
SELECT pr.name, 0, pr.id
FROM Projects pr
WHERE pr.name NOT IN
	(SELECT ts.name
		FROM Tasks ts)