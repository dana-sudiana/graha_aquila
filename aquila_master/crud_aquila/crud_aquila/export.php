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
h1   {color: blue;}
p    {color: red;}
</style>
</head>

<body>
	

<h1 style="color:blue;">RUMAH GRAHA AQUILA</h1>


<table border="1" cellpadding="10" cellspacing="0">

	<tr bgcolor="#FF5A57">
		<th>NO.</th>
				
		<th>NO.RMH</th>
		<th>NAMA</th>
		<th>PHOTO</th>
		<th>TGL LHR</th>
		<th>TELPON</th>
		<th>GMAIL</th>
		<th>KET</th>
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $warga_grahadbf as $row ) : ?>
	<tr>
		<td><?= $i; ?></td>
				
		<td><?= $row["nrp"]; ?></td>
		<td><?= $row["nama"]; ?></td>
		<td><img src="img/<?= $row["gambar"]; ?>" width="60"></td>
		<td><?= $row["tgl_lahir"]; ?></td>
		<td><?= $row["telpon"]; ?></td>
		<td><?= $row["email"]; ?></td>
		<td><?= $row["jurusan"]; ?></td>
		
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>
<script>
    window.print();
</script>
  <center>
    <a target="_blank" href="export.php">EXPORT KE EXCEL</a>
  </center>
</body>
</html>