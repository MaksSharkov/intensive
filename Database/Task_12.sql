INSERT INTO Projects (name)
VALUES ('������ �����')

DECLARE @ProjId int;
SELECT @ProjId = id
					FROM Projects
					WHERE name LIKE '������ �����'

INSERT INTO Tasks (name, completed, project_id)
SELECT pr.name, 0, @ProjId 
FROM Projects pr
WHERE pr.name NOT IN
	(SELECT ts.name
		FROM Tasks ts) OR pr.name IN 
								(SELECT ts.name
									FROM Tasks ts
									WHERE ts.project_id NOT LIKE @ProjId)