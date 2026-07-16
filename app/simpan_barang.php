<?php

include "koneksi.php";

$nama=$_POST['nama_barang'];
$harga=$_POST['harga'];
$stok=$_POST['stok'];

mysqli_query($conn,"INSERT INTO barang
(nama_barang,harga,stok,id_kategori)
VALUES
('$nama','$harga','$stok',1)");

header("Location:barang.php");

?>