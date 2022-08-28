CREATE PROCEDURE dbo.AddNewProjectSP
	@StartDate DATE,
	@Deadline DATE,
	@PStatus NVARCHAR(10),
	@Cost int,
	@ProjectHistory NVARCHAR(300),
	@ProjectName NVARCHAR(20)
AS   
BEGIN
	INSERT INTO Project
	(
	StartDate,
	Deadline,
	PStatus,
	Cost,
	ProjectHistory,
	ProjectName
	) 
	VALUES 
	(
	@StartDate,
	@Deadline,
	@PStatus,
	@Cost,
	@ProjectHistory,
	@ProjectName
	)
END
GO