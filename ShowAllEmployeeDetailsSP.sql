CREATE PROC dbo.ShowAllEmployeeDetailsSP @ID INT
AS
BEGIN
	SELECT TOP 1 Salary, 
	(FristName+' '+LastName) AS NAME,
	Email,
	Eaddress,
	MoblileNumber,
	CV,
	BirthDate,
	JoinDate,
	ResignDate,
	Gender
FROM Employee E left join Salary S on E.EmployeeID= S.EmployeeID 
Where E.EmployeeID = @ID Order by S.ToMonth desc
END