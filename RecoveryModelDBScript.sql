/* Script written for
www.sqlservercurry.com */
USE master
GO

SELECT  
        [name],
        [recovery_model],
        [recovery_model_desc]
FROM    sys.[databases]

GO

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

ALTER DATABASE PurchaseOrderDatabase SET RECOVERY SIMPLE

GO
SELECT  
        [name],
        [recovery_model],
        [recovery_model_desc]
FROM    sys.[databases] WHERE name='PurchaseOrderDatabase'



