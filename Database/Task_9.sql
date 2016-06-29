SELECT CAST (deadline AS date) AS Deadline, COUNT(*) AS TaskCount
FROM Tasks
GROUP BY CAST (deadline AS date)
ORDER BY CAST (deadline AS date)