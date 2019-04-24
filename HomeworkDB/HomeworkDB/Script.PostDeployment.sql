/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--INSERT Users(FullName, Email, Phone, Birthday)
--VALUES ()

--Seed for Users
IF(NOT EXISTS(SELECT * FROM Users WHERE Email = 'AleksandrKar7@gmail.com'))
BEGIN
	INSERT Users(FullName, Email, Phone, DateCreate)
	VALUES ('Aleksandr Karpov', 'AleksandrKar7@gmail.com', '+8805553535', GETDATE())
END

IF(NOT EXISTS(SELECT * FROM Users WHERE Email = 'Vasily@gmail.com'))
BEGIN
	INSERT Users(FullName, Email, Phone, DateCreate)
	VALUES ('Vasya Puprin', 'Vasily@gmail.com', '+8804272535', GETDATE())
END

IF(NOT EXISTS(SELECT * FROM Users WHERE Email = 'Petr@gmail.com'))
BEGIN
	INSERT Users(FullName, Email, Phone, DateCreate)
	VALUES ('Petro Petrov', 'Petr@gmail.com', '+8747245745', GETDATE())
END

--UserId = SELECT TOP 1 Users.Id FROM Users 
--Seed for Blogs
IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Food'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Food', 'foodDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'AleksandrKar7@gmail.com'))
END

IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Drink'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Drink', 'drinkDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'AleksandrKar7@gmail.com'))
END

IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Green'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Green', 'greenDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'Vasily@gmail.com'))
END

IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Red'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Red', 'redDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'Vasily@gmail.com'))
END

IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Blue'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Blue', 'blueDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'Petr@gmail.com'))
END

IF(NOT EXISTS(SELECT * FROM Blogs WHERE Title = 'Water'))
BEGIN
	INSERT Blogs(Title, Descriptions, DateCreate, UserId)
	VALUES ('Water', 'waterDesc', GETDATE(), (SELECT TOP 1 Users.Id FROM Users WHERE Email = 'Petr@gmail.com'))
END