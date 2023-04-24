
CREATE DATABASE Labo12;
GO
	
-- Configurer un nouveau filegroup ici
USE Labo12
GO

EXEC sp_configure filestream_access_level, 2 RECONFIGURE

ALTER DATABASE Labo12
ADD FILEGROUP FG_Images CONTAINS FILESTREAM;
GO
ALTER DATABASE Labo12
ADD FILE (
	NAME = FG_Images,
	FILENAME = 'C:\EspaceLabo\FG_Images'
)
TO FILEGROUP FG_Images
GO