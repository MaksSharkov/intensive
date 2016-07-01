SELECT tb.name AS Table_Name
		,ind.name AS Index_Name
		,SUM(prt.row_count) AS Index_Row_Count
		,SUM(prt.reserved_page_count * 8) AS Total_Size
		,SUM(prt.used_page_count * 8) AS Used_Size
		,SUM((prt.reserved_page_count - prt.used_page_count) * 8) AS Unused_Size
FROM sys.dm_db_partition_stats prt
INNER JOIN sys.tables tb ON prt.object_id = tb.object_id
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id
GROUP BY tb.name, ind.name