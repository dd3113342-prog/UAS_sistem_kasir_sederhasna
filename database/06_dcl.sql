USE db_kasir;

-- Membuat user kasir

CREATE USER 'kasir'@'localhost'
IDENTIFIED BY '12345';

-- Memberikan hak akses

GRANT
SELECT,
INSERT,
UPDATE
ON db_kasir.*
TO 'kasir'@'localhost';

-- Reload hak akses

FLUSH PRIVILEGES;

-- Melihat hak akses

SHOW GRANTS FOR 'kasir'@'localhost';
