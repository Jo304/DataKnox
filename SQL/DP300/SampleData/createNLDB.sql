CREATE TABLE dbo.CreditCards(
CreditCardID INT PRIMARY KEY CLUSTERED,
CardNumber NVARCHAR(50) NOT NULL,
CardLast4 INT NOT NULL,
CardExpMonth TINYINT NOT NULL,
CardExpYear SMALLINT NOT NULL
);
GO

INSERT INTO dbo.CreditCards VALUES (1,'1111222233334444',4444,9,2022)
INSERT INTO dbo.CreditCards VALUES (2,'2222333344445555',5555,3,2022)
INSERT INTO dbo.CreditCards VALUES (3,'3333444455556666',6666,1,2022)
INSERT INTO dbo.CreditCards VALUES (4,'4444555566667777',7777,10,2022)
GO

CREATE TABLE dbo.Employees(
EmployeeID INT PRIMARY KEY CLUSTERED,
FirstName NVARCHAR(50) NOT NULL,
LastName NVARCHAR(50) NOT NULL,
Salary BIGINT NOT NULL,
SSNumber NVARCHAR(20) NULL
);
GO

INSERT INTO dbo.Employees VALUES (1,'Darth','Vader',100000000,'111-22-3333')
INSERT INTO dbo.Employees VALUES (2,'Luke','Skywalker',5000000,'222-33-4444')
INSERT INTO dbo.Employees VALUES (3,'Leia','Skywalker',5000000,'333-44-5555')
GO

SELECT * FROM sys.column_master_keys

SELECT * FROM sys.column_encryption_keys
