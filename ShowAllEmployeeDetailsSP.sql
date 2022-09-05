CREATE PROC dbo.ShowAllEmployeeDetailsSP @ID INT
AS
BEGIN
	SELECT (FristName+' '+LastName) AS NAME,Email,Eaddress,MoblileNumber,CV,BirthDate,JoinDate,ResignDate,Gender FROM Employee Where EmployeeID = @ID
END