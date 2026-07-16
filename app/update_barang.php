<?php
include "koneksi.php";

$id     = $_POST['id_barang'];
$nama   = $_POST['nama_barang'];
$harga  = $_POST['harga'];
$stok   = $_POST['stok'];

mysqli_query($conn,"UPDATE barang
SET
nama_barang='$nama',
harga='$harga',
stok='$stok'
WHERE id_barang='$id'");

header("Location: barang.php");
?>