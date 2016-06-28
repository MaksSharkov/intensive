USE master;
GO
CREATE DATABASE SharkovIntensive
ON
(	NAME = SharkovIntensive_db,
	FILENAME = 'C:\Projects\intensive\Database\SharkovIntensive.mdf',
	SIZE = 10,
	MAXSIZE = 100,
	FILEGROWTH = 5 )
LOG ON
(	NAME = SharkovIntensive_log,
	FILENAME = 'C:\Projects\intensive\Database\SharkovIntensive.ldf',
	SIZE = 5MB,
	MAXSIZE = 30MB,
	FILEGROWTH = 5MB );
GO