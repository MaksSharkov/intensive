IF NOT EXISTS (SELECT *
		FROM Projects
		WHERE name = '������ �����')
BEGIN
	INSERT INTO Projects (name)
	VALUES ('������ �����')
END;

DECLARE @ProjId int;
SET @ProjId = (SELECT id
				FROM Projects
				WHERE name = '������ �����')

INSERT INTO Tasks (name, completed, project_id)
SELECT pr.name, 0, @ProjId 
FROM Projects pr