CREATE VIEW [dbo].[AllUsers]
	AS 
	SELECT FullName, Email, Phone, DateCreate
	FROM Users
