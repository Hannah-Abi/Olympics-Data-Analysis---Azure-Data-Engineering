USE tokyo_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gen2  @ViewName nvarchar(100)
AS 
BEGIN

DECLARE @statement VARCHAR(MAX)

     SET @statement = N'CREATE OR ALTER VIEW ' + @ViewName + ' AS
        SELECT *
        FROM
            OPENROWSET(
            BULK ''https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/athletes/**' + @ViewName + '/'',
            FORMAT = ''DELTA''
        ) as [result]
    '


EXEC (@statement)

END
GO