/* Script written for
www.sqlservercurry.com */
GO
SELECT [name],[collation_name]
FROM sys.[databases]

--See all the available Collation
SELECT  [name],
        [description]
FROM    sys.fn_helpcollations()

USE master
GO

CREATE DATABASE PurchaseOrderDatabase 
ON PRIMARY
(	NAME = N'PurchaseOrderDb',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.mdf',  
	SIZE = 1024MB ,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1024MB )
LOG ON 
(	NAME = N'PurchaseOrderDb_log',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\
	MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.ldf', 
	SIZE = 1024MB ,
	MAXSIZE = 2048MB ,
	FILEGROWTH = 1024MB)
	COLLATE Albanian_BIN
GO

SELECT [name],[collation_name]
FROM sys.[databases] WHERE name='PurchaseOrderDatabase'
