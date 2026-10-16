CREATE TABLE [dbo].[Author] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [FirstName] NVARCHAR (50)  NOT NULL,
    [LastName]  NVARCHAR (50)  NOT NULL,
    [Address]   NVARCHAR (200) NULL,
    [Phone]     VARCHAR (20)   NULL,
    [Email]     VARCHAR (100)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

