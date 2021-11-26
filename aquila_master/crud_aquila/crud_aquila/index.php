<?php 
require 'functions.php';
$warga_grahadbf = query("SELECT * FROM warga_grahadbf");

// tombol cari ditekan
if( isset($_POST["cari"]) ) {
	$warga_grahadbf = cari($_POST["keyword"]);
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Halaman Admin</title>
	<style>
body {background-color: powderblue;}
h1   {color: #171717;}
p    {color: red;}
</style>
</head>


<h1 style="color:#171717;">RUMAH GRAHA AQUILA</h1>

<a href="tambah.php" style="color:#171717;">TAMBAH RUMAH WARGA</a>
<br><br>

<form action="" method="post">

	<input type="text" name="keyword" size="40" autofocus placeholder="masukkan keyword pencarian.." autocomplete="off">
	<button type="submit" name="cari" style="color:red;">Cari!</button>
	
</form>

<br>
<table border="1" cellpadding="10" cellspacing="0">

	<tr bgcolor="#388686">
		<th>NO.</th>
		<th>UPDATE</th>
		<th>PHOTO</th>
		<th>NO.RMH</th>
		<th>NAMA</th>
		<th>TGL LHR</th>
		<th>TELPON</th>
		<th>GMAIL</th>
		<th>KET</th>
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $warga_grahadbf as $row ) : ?>
	<tr>
		<td><?= $i; ?></td>
		<td>
			<a href="ubah.php?id=<?= $row["id"]; ?>" >ubah</a> |
			<a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('yakin?');" style="color:red;">hapus</a>
		</td>
		<td><img src="img/<?= $row["gambar"]; ?>" width="60"></td>
		<td><?= $row["nrp"]; ?></td>
		<td><?= $row["nama"]; ?></td>
		<td><?= $row["tgl_lahir"]; ?></td>
		<td><?= $row["telpon"]; ?></td>
		<td><?= $row["email"]; ?></td>
		<td><?= $row["jurusan"]; ?></td>
		
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>

</body>
</html>