SELECT tb.name AS Table_Name
		, ind.name AS Index_Name
		, SUM (ius.system_scans + ius.user_scans) AS Scans
		, SUM (ius.system_seeks + ius.user_seeks) AS Seeks
		, SUM (ius.system_updates + ius.user_updates) AS Updates
		, SUM (ips.avg_fragmentation_in_percent) AS FragmentationInPercent
		, SUM (ips.fragment_count) AS FragmentCount
		, SUM (ips.avg_fragment_size_in_pages) AS PagesInOneIndexFragment
FROM sys.tables tb
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id
INNER JOIN sys.dm_db_index_usage_stats ius ON ind.object_id = ius.object_id
INNER JOIN sys.dm_db_index_physical_stats (DB_ID('SharkovIntensive'),NULL,NULL,NULL,NULL) ips ON ips.object_id = ind.object_id
GROUP BY tb.name, ind.name