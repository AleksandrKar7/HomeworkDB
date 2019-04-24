CREATE PROCEDURE [dbo].[DeleteUser]
	@UserId INT
AS
	DELETE FROM Users
	WHERE Users.Id = @UserId

