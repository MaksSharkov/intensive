SELECT tb.name AS Table_Name
		,ind.name AS Index_Name
		,prt.row_count AS Index_Row_Count
		,prt.reserved_page_count * 8 AS Total_Size
		,prt.used_page_count * 8 AS Used_Size
		,(prt.reserved_page_count - prt.used_page_count) * 8 AS Unused_Size
		, ind.object_id 
		, ind.index_id
		, prt.index_id
FROM sys.tables tb
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id
INNER JOIN sys.dm_db_partition_stats prt ON prt.object_id = ind.object_id AND ind.index_id = prt.index_id

SELECT tb.name AS Table_Name
		,ind.name AS Index_Name
		,prt.row_count AS Index_Row_Count
		,prt.reserved_page_count * 8 AS Total_Size
		,prt.used_page_count * 8 AS Used_Size
		,(prt.reserved_page_count - prt.used_page_count) * 8 AS Unused_Size
		, ind.object_id 
		, ind.index_id
		, prt.index_id
FROM sys.dm_db_partition_stats prt
INNER JOIN sys.tables tb ON prt.object_id = tb.object_id
INNER JOIN sys.indexes ind ON ind.object_id = tb.object_id AND ind.index_id = prt.index_id