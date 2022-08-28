CREATE PROCEDURE dbo.AddNewSalarySP
	@FromMonth DATE,
	@ToMonth DATE,
	@Salary INT,
	@EmployeeID INT
AS   
BEGIN
	INSERT INTO Salary
	(
	FromMonth,
	ToMonth,
	Salary,
	EmployeeID
	) 
	VALUES 
	(
	@FromMonth,
	@ToMonth,
	@Salary,
	@EmployeeID
	)
END
GO