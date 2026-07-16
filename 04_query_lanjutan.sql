USE db_kasir;

-- Menampilkan seluruh data barang
SELECT * FROM barang;

-- Menampilkan data barang beserta kategori
SELECT
    b.id_barang,
    b.nama_barang,
    k.nama_kategori,
    b.harga,
    b.stok
FROM barang b
JOIN kategori k
ON b.id_kategori = k.id_kategori;

-- Menampilkan data transaksi beserta nama kasir
SELECT
    p.id_penjualan,
    p.tanggal,
    u.nama_user,
    p.total
FROM penjualan p
JOIN user u
ON p.id_user = u.id_user;

-- Menampilkan detail transaksi
SELECT
    dp.id_detail,
    p.id_penjualan,
    b.nama_barang,
    dp.jumlah,
    dp.harga,
    dp.subtotal
FROM detail_penjualan dp
JOIN penjualan p
ON dp.id_penjualan = p.id_penjualan
JOIN barang b
ON dp.id_barang = b.id_barang;

-- Menghitung total penjualan
SELECT SUM(total) AS total_penjualan
FROM penjualan;

-- Menghitung jumlah transaksi
SELECT COUNT(*) AS jumlah_transaksi
FROM penjualan;

-- Menghitung total stok barang
SELECT SUM(stok) AS total_stok
FROM barang;

-- Menampilkan barang dengan harga di atas 10000
SELECT *
FROM barang
WHERE harga > 10000;

-- Mengurutkan barang berdasarkan harga tertinggi
SELECT *
FROM barang
ORDER BY harga DESC;
