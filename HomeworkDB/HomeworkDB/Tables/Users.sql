﻿CREATE TABLE [dbo].[Users]
(
	[Id] INT NOT NULL CONSTRAINT PK_User PRIMARY KEY IDENTITY(1,1), 
    [FullName] NVARCHAR(100) NOT NULL, 
    [Email] NVARCHAR(100) NOT NULL, 
    [DateCreate] DATE NOT NULL, 
    [Phone] NCHAR(20) NULL
)