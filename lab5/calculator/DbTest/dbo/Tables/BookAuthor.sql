CREATE TABLE [dbo].[BookAuthor] (
    [BookId]   INT NOT NULL,
    [AuthorId] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([BookId] ASC, [AuthorId] ASC),
    FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[Author] ([Id]),
    FOREIGN KEY ([BookId]) REFERENCES [dbo].[Book] ([Id])
);

