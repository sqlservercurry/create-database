/* Script written for
www.sqlservercurry.com */
USE master
GO

CREATE DATABASE PurchaseOrderDatabase 
ON PRIMARY
(	NAME = N'PurchaseOrderDb',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.mdf' ,  
	SIZE = 1024MB ,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1024MB )
LOG ON 
(	NAME = N'PurchaseOrderDb_log',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.ldf' , 
	SIZE = 1024MB ,
	MAXSIZE = 2048MB ,
	FILEGROWTH = 1024MB)

GO

--Multi-File Database
CREATE DATABASE PurchaseOrderDatabase 
ON PRIMARY
(	NAME = N'PurchaseOrderDb',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.mdf' ,  
	SIZE = 1024MB ,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1024MB ),
	(NAME = N'PurchaseOrderDb2', 
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase_2.ndf' , 
	SIZE = 1024MB , 
	FILEGROWTH = 1024MB )
LOG ON 
(	NAME = N'PurchaseOrderDb_log',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.ldf' , 
	SIZE = 1024MB ,
	MAXSIZE = 2048MB ,
	FILEGROWTH = 1024MB)
