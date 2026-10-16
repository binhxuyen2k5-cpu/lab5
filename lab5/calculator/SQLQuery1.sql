-- Tao CSDL Bookstore (SQL Server) cho phan SQL Server Unit Test

CREATE TABLE [dbo].[Category] (
    [Id]   INT IDENTITY(1,1) PRIMARY KEY,
    [Name] NVARCHAR(100) NOT NULL
);
GO

CREATE TABLE [dbo].[Author] (
    [Id]        INT IDENTITY(1,1) PRIMARY KEY,
    [FirstName] NVARCHAR(50)  NOT NULL,
    [LastName]  NVARCHAR(50)  NOT NULL,
    [Address]   NVARCHAR(200) NULL,
    [Phone]     VARCHAR(20)   NULL,
    [Email]     VARCHAR(100)  NULL
);
GO

CREATE TABLE [dbo].[Book] (
    [Id]         INT IDENTITY(1,1) PRIMARY KEY,
    [Title]      NVARCHAR(200) NOT NULL,
    [CategoryId] INT NOT NULL REFERENCES [dbo].[Category]([Id])
);
GO

CREATE TABLE [dbo].[BookAuthor] (
    [BookId]   INT NOT NULL REFERENCES [dbo].[Book]([Id]),
    [AuthorId] INT NOT NULL REFERENCES [dbo].[Author]([Id]),
    PRIMARY KEY ([BookId], [AuthorId])
);
GO

-- Stored procedure can test
CREATE PROCEDURE [dbo].[sp_CountAuthors]
AS
BEGIN
    SELECT COUNT(*) AS Total FROM [dbo].[Author];
    RETURN 0;
END
GO

CREATE PROCEDURE [dbo].[sp_Top3Authors]
AS
BEGIN
    SELECT TOP 3 * FROM [dbo].[Author] ORDER BY [Id];
    RETURN 0;
END
GO

-- Du lieu mau (khop voi hinh trong huong dan)
INSERT INTO [dbo].[Author] ([FirstName],[LastName],[Address],[Phone],[Email]) VALUES
(N'Thành', N'Dương',   N'Hậu Giang', '0984461466', 'dhthanhqa@gmail.com'),
(N'Lê',    N'Nguyễn',  N'Tp.HCM',    '0984461467', 'lenguyen@gmail.com'),
(N'Nam',   N'Võ',      N'Long An',   '0984461648', 'namvo@gmail.com');
GO
