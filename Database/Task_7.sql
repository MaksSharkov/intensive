SELECT p.name AS [Project Name], t.name AS [Task Name]
FROM Tasks AS t INNER JOIN Projects AS p
ON t.project_id = p.id
ORDER BY p.name