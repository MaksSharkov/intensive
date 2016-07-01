SELECT tb.name AS Table_Name
		, ind.name AS Index_Name
		, SUM (ius.system_scans + ius.user_scans) AS Scans
		, SUM (ius.system_seeks + ius.user_seeks) AS Seeks
		, SUM (ius.system_updates + ius.user_updates) AS Updates
FROM sys.tables tb
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id
INNER JOIN sys.dm_db_index_usage_stats ius ON ind.object_id = ius.object_id
GROUP BY tb.name, ind.name