
CREATE PROCEDURE dbo.TotalCountSP
AS
BEGIN
	DECLARE @TotalEmployee AS INT = 0;
	DECLARE @TotalClient AS INT = 0;
	DECLARE @TotalProject AS INT = 0;
	DECLARE @TotalSalary AS INT = 0;

	SELECT @TotalEmployee = COUNT(EmployeeId)  FROM Employee
	SELECT @TotalClient = COUNT(ClientID)  FROM Client
	SELECT @TotalProject = COUNT(ProjectID)  FROM Project
	SELECT @TotalSalary = SUM(Salary)From Salary
	
	SELECT @TotalEmployee AS 'TotalEmployee',
		   @TotalClient AS 'TotalClient',
		   @TotalProject AS 'TotalProject',
		   @TotalSalary As 'TotalSalary'
END

