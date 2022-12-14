USE master
GO

--tail log backup
BACKUP LOG SWDB
    TO FILE = '\\file-nug\backups\swdb_tlog.bak'
    WITH NORECOVERY
GO

RESTORE DATABASE SWDB
    FILEGROUP='PRIMARY'
    FROM DISK = '\\file-nug\backups\SWDB_full.bak'
    WITH NORECOVERY, PARTIAL, REPLACE;
GO

RESTORE DATABASE SWDB
    FILEGROUP='PRIMARY'
    FROM DISK = '\\file-nug\backups\SWDB_diff.bak'
    WITH NORECOVERY;
GO

RESTORE DATABASE SWDB
    FILEGROUP='PRIMARY'
    FROM DISK = '\\file-nug\backups\SWDB_log.bak'
    WITH NORECOVERY;
GO

RESTORE DATABASE SWDB
    FILEGROUP='PRIMARY'
    FROM DISK = '\\file-nug\backups\SWDB_tlog.bak'
    WITH RECOVERY;
GO


RESTORE DATABASE SWDB
    FILEGROUP='SECONDARY'
    FROM DISK = '\\file-nug\backups\SWDB_full.bak'
    WITH NORECOVERY;
GO

RESTORE DATABASE SWDB
    FILEGROUP='SECONDARY'
    FROM DISK = '\\file-nug\backups\SWDB_diff.bak'
    WITH NORECOVERY;
GO

RESTORE DATABASE SWDB
    FILEGROUP='SECONDARY'
    FROM DISK = '\\file-nug\backups\SWDB_log.bak'
    WITH NORECOVERY;
GO

RESTORE DATABASE SWDB
    FILEGROUP='SECONDARY'
    FROM DISK = '\\file-nug\backups\SWDB_tlog.bak'
    WITH RECOVERY;
GO