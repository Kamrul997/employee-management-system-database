CREATE PROCEDURE dbo.UpdateProjectSP 
	@ProjectID INT,
	@StartDate DATE,
	@Deadline DATE,
	@PStatus NVARCHAR(10),
	@Cost int,
	@ProjectHistory NVARCHAR(300),
	@ProjectName NVARCHAR(20)
AS   
BEGIN
	UPDATE Project SET 
	StartDate = @StartDate,
	Deadline = @Deadline,
	PStatus = @PStatus,
	Cost = @Cost,
	ProjectHistory = @ProjectHistory,
	ProjectName = @ProjectName
	WHERE ProjectID = @ProjectID
END