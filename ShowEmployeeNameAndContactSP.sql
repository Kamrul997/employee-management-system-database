CREATE PROC dbo.ShowEmployeeNameAndContactSP
AS
BEGIN
	SELECT EmployeeID AS ID, (FristName+' '+LastName) AS Name, Email,MoblileNumber AS Number,Gender FROM Employee
END
go
delete  from Employee where EmployeeID = 103
go
