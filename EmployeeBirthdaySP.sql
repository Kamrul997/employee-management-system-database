CREATE PROC EmployeeBirthdaySP
AS
BEGIN
SELECT (FristName +' '+ LastName) AS NAME FROM Employee
WHERE DATEPART(d, BirthDate) = DATEPART(d, GETDATE())
    AND DATEPART(m, BirthDate) = DATEPART(m, GETDATE())

END