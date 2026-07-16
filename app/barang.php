<?php
include "koneksi.php";
include "navbar.php";
?>

<h2>Data Barang</h2>

<a href="tambah_barang.php" class="btn tambah">
Tambah Barang
</a>

<br><br>

<table>

<tr>

<th>No</th>

<th>Nama Barang</th>

<th>Harga</th>

<th>Stok</th>

<th>Aksi</th>

</tr>

<?php

$no=1;

$data=mysqli_query($conn,"SELECT * FROM barang");

while($d=mysqli_fetch_array($data))
{

?>

<tr>

<td><?= $no++; ?></td>

<td><?= $d['nama_barang']; ?></td>

<td><?= $d['harga']; ?></td>

<td><?= $d['stok']; ?></td>

<td>

<a href="edit_barang.php?id=<?=$d['id_barang'];?>" class="btn edit">

Edit

</a>

<a
onclick="return confirm('Hapus Data?')"
href="hapus_barang.php?id=<?=$d['id_barang'];?>"
class="btn hapus">

Hapus

</a>

</td>

</tr>

<?php } ?>

</table>

</div>

</body>

</html>