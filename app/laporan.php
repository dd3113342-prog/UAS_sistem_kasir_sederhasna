<?php
include "koneksi.php";
include "navbar.php";
?>

<h2>Laporan Data Barang</h2>

<table>

<tr>
    <th>No</th>
    <th>Nama Barang</th>
    <th>Harga</th>
    <th>Stok</th>
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

<td>Rp <?= number_format($d['harga']); ?></td>

<td><?= $d['stok']; ?></td>

</tr>

<?php } ?>

</table>

<br>

<?php

$total=mysqli_query($conn,"SELECT COUNT(*) AS jumlah FROM barang");
$t=mysqli_fetch_array($total);

?>

<h3>Total Barang : <?= $t['jumlah']; ?></h3>

</div>

</body>

</html>