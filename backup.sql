-- remove db to retreive the db from backup file
DROP DATABASE UniversityDB;

-- retreive db from backup file
RESTORE DATABASE UniversityDB
FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\Backup\UniversityBackup.bak'
WITH REPLACE,
MOVE 'UniversityDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UniversityDB.mdf',
MOVE 'UniversityDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\UniversityDB_log.ldf';


use UniversityDB
GO