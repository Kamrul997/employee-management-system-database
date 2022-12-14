USE EmployeeManagement
GO
CREATE TABLE Users(
UserID INT IDENTITY(100,1) PRIMARY KEY,
FristName NVARCHAR(20), 
LastName NVARCHAR(20),
Designation NVARCHAR(15),
Email NVARCHAR(40),
uPassword NVARCHAR(20),
CreatedAt DATE,
UpdatedOn DATE,
CreatedBy NVARCHAR(40),
UpdatedBy NVARCHAR(40),
Uaddress NVARCHAR(50),
Photo NVARCHAR(15),
MoblileNumber NVARCHAR(20),
Gender varchar(20)
)
GO

CREATE TABLE Employee(
EmployeeID INT IDENTITY(100,1) PRIMARY KEY,
FristName NVARCHAR(20), 
LastName NVARCHAR(20),
Email NVARCHAR(40),
MoblileNumber NVARCHAR(20),
CV NVARCHAR(50),
Eaddress NVARCHAR(50),
BirthDate DATE,
JoinDate DATE,
ResignDate DATE,
Gender varchar(20),
Esalary INT,
UserID INT FOREIGN KEY REFERENCES Users(UserID)
)
GO

CREATE TABLE Client(
	ClientID INT IDENTITY(100,1) PRIMARY KEY,
	FristName NVARCHAR(20), 
	LastName NVARCHAR(20),
	Caddress NVARCHAR(50),
	Gender varchar(20),
	MoblileNumber NVARCHAR(20)
)
GO

CREATE TABLE Project(
	ProjectID INT IDENTITY (100,1) PRIMARY KEY,
	StartDate DATE,
	Deadline DATE,
	PStatus NVARCHAR(10),
	Cost int,
	ProjectHistory NVARCHAR(300),
	ProjectName NVARCHAR(20)
)
GO



CREATE TABLE Salary(
	SalaryID INT IDENTITY(100,1) PRIMARY KEY,
	FromMonth DATE,
	ToMonth DATE,
	Salary INT,
	EmployeeID INT FOREIGN KEY REFERENCES Employee(EmployeeID)
)
GO


CREATE TABLE EmployeeProject(
ID INT IDENTITY PRIMARY KEY,
EmployeeID INT,
ProjectID INT)

CREATE TABLE ClientProject(
ID INT IDENTITY PRIMARY KEY,
ClientID INT,
ProjectID INT
) 
