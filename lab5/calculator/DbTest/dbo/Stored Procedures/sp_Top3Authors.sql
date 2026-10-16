
CREATE PROCEDURE [dbo].[sp_Top3Authors]
AS
BEGIN
    SELECT TOP 3 * FROM [dbo].[Author] ORDER BY [Id];
    RETURN 0;
END
