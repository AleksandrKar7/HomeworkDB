CREATE PROCEDURE [dbo].[UpdateUser]
	@UserId INT,
	@FullName NVARCHAR(100),
	@Email NVARCHAR(100),
	@Create DATE,
	@Phone NVARCHAR(20)
AS
	UPDATE Users
	SET FullName = @FullName,
	Email = @Email,
	DateCreate = @Create,
	Phone = @Phone
	WHERE Id = @UserId
