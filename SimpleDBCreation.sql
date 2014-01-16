/* Script written for
www.sqlservercurry.com */
/*USE model
GO
CREATE TABLE TestTable
(
	TestID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50)
)
*/

USE master
GO
CREATE DATABASE PurchaseOrderDatabase

--Select All the available databases under this instance - 

SELECT * FROM sys.databases

--Using sp_helpdb stored procedure

EXEC sys.sp_helpdb N'PurchaseOrderDB'

EXEC sys.sp_helpdb N'Model'
