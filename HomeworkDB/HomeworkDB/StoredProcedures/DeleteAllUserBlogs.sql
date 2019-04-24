CREATE PROCEDURE [dbo].[DeleteAllUserBlogs]
	@UserId INT
AS
	DELETE FROM Blogs
	WHERE Blogs.UserId = @UserId

