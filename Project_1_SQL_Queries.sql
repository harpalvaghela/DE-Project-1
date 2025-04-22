--SCD Type 2 Tables

CREATE TABLE dbo.Accounts (
    AccountID INT,
    CustomerID INT,
    AccountType VARCHAR(100),
    AccountBalance FLOAT,
    CreatedBy VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedBy VARCHAR(100),
    UpdatedDate DATETIME,
    HashKey BIGINT,
	IsActive INT
);

--SELECT AccountID, HashKey FROM dbo.Accounts where IsActive = 1

CREATE TABLE dbo.Customers (
    CustomerID INT,
    FullName VARCHAR(255),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    CreatedBy VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedBy VARCHAR(100),
    UpdatedDate DATETIME,
    HashKey BIGINT,
    IsActive INT
);

--SELECT CustomerID, HashKey FROM dbo.Customers where IsActive = 1

--------SCD Type 1-----------------

CREATE TABLE dbo.LoanPayments (
    PaymentID INT,
    LoanID INT,
    PaymentDate DATETIME,
    PaymentAmount FLOAT,
    CreatedBy VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedBy VARCHAR(100),
    UpdatedDate DATETIME,
    HashKey BIGINT
);

--SELECT PaymentID, HashKey FROM dbo.LoanPayments

CREATE TABLE dbo.loans (
    LoanID INT,
    CustomerID INT,
    LoanAmount FLOAT,
    InterestRate FLOAT,
    LoanTerm INT,
    CreatedBy VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedBy VARCHAR(100),
    UpdatedDate DATETIME,
    HashKey BIGINT
);

--SELECT LoanID, HashKey FROM dbo.loans

CREATE TABLE dbo.Transactions (
    TransactionID INT,
    AccountID INT,
    TransactionDate DATETIME,
    TransactionAmount FLOAT,
    TransactionType VARCHAR(50),
    CreatedBy VARCHAR(100),
    CreatedDate DATETIME,
    UpdatedBy VARCHAR(100),
    UpdatedDate DATETIME,
    HashKey BIGINT
);

--SELECT TransactionID, HashKey FROM dbo.Transactions
--=============================================================


SELECT * FROM dbo.Accounts order by AccountID DESC;
SELECT * FROM dbo.Customers order by CustomerID DESC;
---------
SELECT * FROM dbo.LoanPayments order by PaymentID DESC;
SELECT * FROM dbo.Loans order by LoanID DESC;
SELECT * FROM dbo.Transactions order by TransactionID DESC;

--==========================================================

SELECT * FROM dbo.Accounts order by 1;
SELECT * FROM dbo.Customers order by 1;
---------
SELECT * FROM dbo.LoanPayments order by 1;
SELECT * FROM dbo.Loans order by 1;
SELECT * FROM dbo.Transactions order by 1;

--============================================================
Truncate table dbo.Accounts;
Truncate table dbo.Customers;		 
Truncate table dbo.LoanPayments;
Truncate table dbo.Loans;
Truncate table dbo.Transactions;

