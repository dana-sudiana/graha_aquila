<?php 
require 'functions.php';
$mahasiswa = query("SELECT * FROM mahasiswa  order by nomer_rmh ASC");

// tombol cari ditekan
if( isset($_POST["cari"]) ) {
	$mahasiswa = cari($_POST["keyword"]);
}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Cetak_warga</title>
	<style>
body {background-color: powderblue;}
h1   {color: #0b486b;}
p    {color: red;}
</style>
</head>


<h1 style="color:#0b486b;">DATA PER KELUARGA GRAHA AQUILA</h1>

<form action="" method="post" action="print_warga.php" target="_blank" >

	<input type="text" name="keyword" size="40" autofocus placeholder="masukkan keyword pencarian.." autocomplete="off">
	<button type="submit" name="cari">Cari!</button>
	
</form>
<br>
<br>
<table border="1" cellpadding="10" cellspacing="0">

	<tr bgcolor="#388686">
		<th>NO.</th>
		<th>NOMER RUMAH</th>
		<th>NAMA</th>
		<th>TGL LAHIR</th>
		<th>TELPON</th>
		<th>MAIL</th>
		<th>STATUS</th>
		<th>KET</th>
	</tr>

	<?php $i = 1; ?>
	<?php foreach( $mahasiswa as $row ) : ?>
	<tr>
		<td><?= $i; ?></td>
		<td><?= $row["nomer_rmh"]; ?></td>
		<td><?= $row["nama"]; ?></td>
		<td><?= $row["tgl_lahir"]; ?></td>
		<td><?= $row["nrp"]; ?></td>
		
		<td><?= $row["email"]; ?></td>
		<td><?= $row["jurusan"]; ?></td>
		<td><?= $row["ket"]; ?></td>
	</tr>
	<?php $i++; ?>
	<?php endforeach; ?>
	
</table>
<p><br>
  <div align="left" >Petugas </div><p></br>
  <div align="left" >( ............... )</div>
 <script>
    window.print();
  </script>
  <center>
    <a target="_blank" href="export.php">EXPORT Master Data Warga KE EXCEL</a>
  </center>
  
</body>
</html>