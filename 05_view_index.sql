USE db_kasir;

-- Membuat VIEW laporan penjualan

CREATE VIEW laporan_penjualan AS
SELECT
    p.id_penjualan,
    p.tanggal,
    u.nama_user,
    p.total
FROM penjualan p
JOIN user u
ON p.id_user = u.id_user;

-- Melihat isi VIEW

SELECT * FROM laporan_penjualan;

-- Membuat INDEX pada nama barang

CREATE INDEX idx_nama_barang
ON barang(nama_barang);

-- Membuat INDEX pada tanggal transaksi

CREATE INDEX idx_tanggal
ON penjualan(tanggal);
