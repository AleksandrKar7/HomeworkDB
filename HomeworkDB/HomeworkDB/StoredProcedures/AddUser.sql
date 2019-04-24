CREATE PROCEDURE [dbo].[AddUser]
	@FullName NVARCHAR(100),
	@Email NVARCHAR(100),
	@Create DATE,
	@Phone NVARCHAR(20)
AS
	INSERT INTO Users(FullName, Email, DateCreate, Phone)
	VALUES(@FullName, @Email, @Create, @Phone)