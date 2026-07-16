# UAS_sistem_kasir_sederhasna# Sistem Informasi Kasir Sederhana

## Deskripsi

Sistem Informasi Kasir Sederhana adalah aplikasi berbasis web yang dibuat menggunakan **PHP**, **MySQL/MariaDB**, HTML, dan CSS. Aplikasi ini bertujuan untuk membantu proses pengelolaan data barang dan transaksi penjualan secara sederhana.

Proyek ini dibuat sebagai tugas **UAS Sistem Database dan Pemrograman Web**.

---

## Fitur Aplikasi

- Dashboard
- CRUD Data Barang
  - Tambah Barang
  - Lihat Data Barang
  - Edit Barang
  - Hapus Barang
- Laporan Data Barang
- Database MySQL
- Relasi Antar Tabel (Foreign Key)
- Query JOIN
- Query Aggregate
- View
- Index Database
- DCL (Hak Akses User)
- Transaction Database

---

## Teknologi yang Digunakan

- PHP
- MySQL / MariaDB
- HTML5
- CSS3
- XAMPP
- phpMyAdmin

---

## Struktur Folder

```
kasir_sederhana/
│
├── database/
│   └── db_kasir.sql
│
├── assets/
│   ├── css/
│   ├── js/
│   └── img/
│
├── koneksi.php
├── navbar.php
├── index.php
├── barang.php
├── tambah_barang.php
├── simpan_barang.php
├── edit_barang.php
├── update_barang.php
├── hapus_barang.php
├── laporan.php
└── README.md
```

---

## Struktur Database

Database yang digunakan bernama:

```
db_kasir
```

Tabel yang terdapat pada database:

1. user
2. kategori
3. barang
4. penjualan
5. detail_penjualan

---

## Cara Menjalankan Program

### 1. Install XAMPP

Pastikan XAMPP telah terpasang pada komputer.

### 2. Jalankan Apache dan MySQL

Buka XAMPP Control Panel kemudian aktifkan:

- Apache
- MySQL

### 3. Import Database

1. Buka phpMyAdmin
2. Buat database dengan nama:

```
db_kasir
```

3. Import file:

```
db_kasir.sql
```

---

### 4. Simpan Project

Letakkan folder project pada:

```
C:\xampp\htdocs\
```

Misalnya:

```
C:\xampp\htdocs\kasir_sederhana
```

---

### 5. Jalankan Aplikasi

Buka browser kemudian akses:

```
http://localhost/kasir_sederhana
```

---

## Tampilan Aplikasi

Aplikasi terdiri dari beberapa halaman utama:

- Dashboard
- Data Barang
- Tambah Barang
- Edit Barang
- Laporan Barang

---

## Fitur Database

Database telah menerapkan:

- Primary Key
- Foreign Key
- Normalisasi hingga 3NF
- JOIN
- Aggregate Function
- View
- Index
- Transaction
- Hak Akses User (DCL)

---

## Hak Akses

### Admin

- Mengelola seluruh data
- Menambah barang
- Mengubah barang
- Menghapus barang
- Melihat laporan

### Kasir

- Mengelola transaksi
- Melihat data barang
- Melihat laporan

---

## Kelebihan Sistem

- Mudah digunakan
- Tampilan sederhana
- CRUD lengkap
- Database terstruktur
- Menggunakan relasi antar tabel
- Cocok untuk pembelajaran Sistem Database

---

## Kekurangan Sistem

- Belum terdapat sistem login yang aman
- Belum terdapat fitur cetak struk
- Belum tersedia manajemen pelanggan
- Tampilan masih sederhana
- Belum menggunakan framework CSS

---

## Pengembang

**Nama :** Danang

**Program Studi :** *(Isi sesuai program studi Anda)*

**Mata Kuliah :**
- Sistem Database
- Pemrograman Web

---

## Lisensi

Project ini dibuat untuk keperluan pembelajaran dan penyelesaian tugas UAS pada mata kuliah Sistem Database dan Pemrograman Web.
