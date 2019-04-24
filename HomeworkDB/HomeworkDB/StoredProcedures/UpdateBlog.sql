CREATE PROCEDURE [dbo].[UpdateBlog]
	@BlogId INT,
	@UserId int = 0,
	@BlogTitle NVARCHAR(MAX),
	@BlogDescription NVARCHAR(MAX),
	@DateCreate DATE
AS
	UPDATE Blogs
	SET UserId = @UserId,
	Title = @BlogTitle,
	Descriptions = @BlogDescription,
	DateCreate = @DateCreate
	WHERE Id = @BlogId