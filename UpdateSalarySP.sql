CREATE PROCEDURE dbo.UpdateSalarySP 
	@SalaryID INT,
	@FromMonth DATE,
	@ToMonth DATE,
	@Salary INT,
	@EmployeeID INT
AS   
BEGIN
	UPDATE Salary SET 
	FromMonth = @FromMonth,
	ToMonth = @ToMonth,
	Salary = @Salary,
	EmployeeID = @EmployeeID 
	WHERE SalaryID = @SalaryID
END