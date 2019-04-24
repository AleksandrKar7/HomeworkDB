CREATE PROCEDURE [dbo].[AddBlog]
	@UserId int = 0,
	@BlogTitle NVARCHAR(MAX),
	@BlogDescription NVARCHAR(MAX)
AS
	INSERT INTO Blogs(UserId, Title, Descriptions, DateCreate)
	VALUES(@UserId, @BlogTitle, @BlogDescription, GETDATE())
