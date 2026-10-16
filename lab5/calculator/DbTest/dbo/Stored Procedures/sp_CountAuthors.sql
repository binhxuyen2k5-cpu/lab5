
-- Stored procedure can test
CREATE PROCEDURE [dbo].[sp_CountAuthors]
AS
BEGIN
    SELECT COUNT(*) AS Total FROM [dbo].[Author];
    RETURN 0;
END
