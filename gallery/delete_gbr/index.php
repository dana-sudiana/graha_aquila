<?php 
require 'functions.php';
$galeri = query("SELECT * FROM galeri");

// tombol cari ditekan
if( isset($_POST["cari"]) ) {
	$galeri = cari($_POST["keyword"]);
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Hapus Galery</title>
	<style>
body {background-color: #FFF2BC;}
h1   {color: blue;}
a color: red;}
</style>
</head>

<h1 style="color:#171717;">HAPUS GAMBAR GALERY PHOTO </h1>

<table border="1" cellpadding="10" cellspacing="0">

	<tr bgcolor="#DEDEDE">
		<th>NO.</th>
		<th>UPDATE</th>
		<th>PHOTO</th>
		<th>NAMA FILE GAMBAR</th>
		<th>TGL UPLOAD</th>
		
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $galeri as $row ) : ?>
	<tr>
		<td><?= $i; ?></td>
		<td>
		
			<a href="hapus.php?id=<?= $row["id"]; ?>" onclick="return confirm('yakin?');" >hapus</a>
		</td>
		<td><img src="../gallery/<?= $row["nama"]; ?>" width="60"></td>
		<td><?= $row["nama"]; ?></td>
		<td><?= $row["tgl_upload"]; ?></td>
		
		
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>
<br>	
</body>
</html>