CREATE PROCEDURE [dbo].[DeleteBlog]
	@BlogId INT
AS
	DELETE FROM Blogs
	WHERE Blogs.Id = @BlogId
