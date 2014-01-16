/* Script written for
www.sqlservercurry.com */
USE master
GO

EXEC sp_configure filestream_access_level, 2;
GO
RECONFIGURE;
GO


USE master
GO

CREATE DATABASE PurchaseOrderDatabase 
ON PRIMARY
(	NAME = N'PurchaseOrderDb',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.mdf' ,  
	SIZE = 1024MB ,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1024MB ), 
	FILEGROUP [ProfileFileGroup]
	CONTAINS FILESTREAM
	(NAME = ProfileDocuments,
      FILENAME = N'E:\BLOB\SQL\PurchaseOrderDocs') 
LOG ON 
(	NAME = N'PurchaseOrderDb_log',
	FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\PurchaseOrderDatabase.ldf' , 
	SIZE = 1024MB ,
	MAXSIZE = 2048MB ,
	FILEGROWTH = 1024MB)
	
USE PurchaseOrderDatabase
GO

CREATE TABLE [dbo].[CustomerProfiles] (
   CustomerID INT NOT NULL PRIMARY KEY CLUSTERED IDENTITY (1,1),
   [ProfileGUID] UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL UNIQUE,
   [ProfileName] VARCHAR (50) NOT NULL,
   [ActualProfile] VARBINARY (MAX) FILESTREAM)
FILESTREAM_ON [ProfileFileGroup]

INSERT INTO CustomerProfiles (ProfileGUID,ProfileName,ActualProfile)
VALUES (NEWID(),'John Maggi',CAST('WelCome To London' as varbinary(MAX)))

SELECT * FROM CustomerProfiles





















