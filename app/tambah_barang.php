<?php
include "navbar.php";
?>

<h2>Tambah Barang</h2>

<form action="simpan_barang.php" method="POST">

Nama Barang

<input
type="text"
name="nama_barang"
required>

Harga

<input
type="number"
name="harga"
required>

Stok

<input
type="number"
name="stok"
required>

<input
type="submit"
value="Simpan">

</form>

</div>

</body>

</html>