CREATE VIEW [dbo].[AllBlogs]
	AS 	
	SELECT Blogs.Title AS Title, Blogs.Descriptions AS Description, Users.FullName AS Author
	FROM Users, Blogs
	WHERE Blogs.UserId = Users.Id
