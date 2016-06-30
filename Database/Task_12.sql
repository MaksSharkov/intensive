IF NOT EXISTS (SELECT *
		FROM Projects
		WHERE name = 'Список задач')
BEGIN
	INSERT INTO Projects (name)
	VALUES ('Список задач')
END;

DECLARE @ProjId int;
SET @ProjId = (SELECT id
				FROM Projects
				WHERE name = 'Список задач')

INSERT INTO Tasks (name, completed, project_id)
SELECT pr.name, 0, @ProjId 
FROM Projects pr