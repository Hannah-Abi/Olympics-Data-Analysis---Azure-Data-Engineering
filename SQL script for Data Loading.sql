--- Create athletes view
CREATE VIEW athletes
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/athletes/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result];

--- Create coaches view
CREATE VIEW coaches
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/coaches/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result];

-- Create entriesgender view
CREATE VIEW entriesgender
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/entriesgender/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result];

--- Create medals view 
CREATE VIEW medals
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/medals/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result];

--- Create teams view 
CREATE VIEW teams
AS
SELECT
    *
FROM
    OPENROWSET(
        BULK 'https://tokyoolympicdatahannah.dfs.core.windows.net/tokyo-olympic-data/transformed-data/teams/**',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result];

