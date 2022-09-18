Create proc dbo.LastID
AS
BEGIN
select top 1 EmployeeID AS LastID from Employee order by employeeID desc
END
exec LastID