CREATE PROC dbo.EmployeeAsignProjectSP @ID INT
AS
BEGIN
SELECT   p.ProjectID, ProjectName,ProjectHistory 
FROM Employee e inner join EmployeeProject ep 
ON e.EmployeeID=ep.EmployeeID inner join Project p 
ON p.ProjectID = ep.ProjectID 
WHERE E.EmployeeID= @ID
END