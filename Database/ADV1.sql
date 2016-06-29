SELECT tb.name AS Table_Name, ind.name AS Index_Name, prt.row_count AS Index_Row_Count, prt.reserved_page_count AS Total_Size, 
		prt.used_page_count AS Used_Size, (prt.reserved_page_count - prt.used_page_count) AS Unused_Size
FROM sys.objects obj
JOIN sys.tables tb ON tb.object_id = obj.object_id
JOIN sys.indexes ind ON ind.object_id = obj.object_id
JOIN sys.dm_db_partition_stats prt ON prt.object_id = obj.object_id