SELECT *
FROM sys.tables tb
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id
INNER JOIN sys.dm_db_index_usage_stats ius ON ind.object_id = ius.object_id