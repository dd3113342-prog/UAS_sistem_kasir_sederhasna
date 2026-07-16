USE db_kasir;

-- Memulai transaksi

START TRANSACTION;

-- Menambah transaksi

INSERT INTO penjualan
(id_user,tanggal,total)
VALUES
(2,CURDATE(),25000);

-- Menambah detail transaksi

INSERT INTO detail_penjualan
(id_penjualan,id_barang,jumlah,harga,subtotal)
VALUES
(2,1,1,20000,20000);

-- Mengurangi stok barang

UPDATE barang
SET stok = stok - 1
WHERE id_barang = 1;

-- Menyimpan transaksi

COMMIT;

-- Jika terjadi kesalahan gunakan:

-- ROLLBACK;
