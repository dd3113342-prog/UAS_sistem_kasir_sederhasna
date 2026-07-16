<?php
include "koneksi.php";
include "navbar.php";

$id = $_GET['id'];

$data = mysqli_query($conn,"SELECT * FROM barang WHERE id_barang='$id'");
$d = mysqli_fetch_array($data);
?>

<h2>Edit Data Barang</h2>

<form action="update_barang.php" method="POST">

<input type="hidden" name="id_barang" value="<?= $d['id_barang']; ?>">

<label>Nama Barang</label>
<input type="text" name="nama_barang" value="<?= $d['nama_barang']; ?>" required>

<label>Harga</label>
<input type="number" name="harga" value="<?= $d['harga']; ?>" required>

<label>Stok</label>
<input type="number" name="stok" value="<?= $d['stok']; ?>" required>

<input type="submit" value="Update">

</form>

</div>
</body>
</html>