SELECT tb.name AS Table_Name, ind.name AS Index_Name
FROM sys.objects obj
JOIN sys.tables tb ON tb.object_id = obj.object_id
JOIN sys.indexes ind ON ind.object_id = obj.object_id