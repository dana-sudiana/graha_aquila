<?php
require 'functions.php';

// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil di tambahkan atau tidak
	if( tambah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil ditambahkan!');
				document.location.href = 'index.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('data gagal ditambahkan!');
				document.location.href = 'index.php';
			</script>
		";
	}


}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Tambah RUMAH GRAHA AQUILA</title>
	<style>
body {background-color: powderblue;}
h1   {color: #ffffff;}
h1   {background-color: #ff5a0b;}
p    {color: red;}
</style>
</head>
<body>
	<h1>Tambah RUMAH WARGA AQUILA</h1>

	<form action="" method="post" enctype="multipart/form-data">
		<ol>
			<hr />
			<li>
				<label for="nrp">NOMER RUMAH : </label>
				<input type="text" name="nrp" id="nrp" required>
			</li>
			<br>
			<li>
				<label for="nama">Nama : </label>
				<input type="text" name="nama" id="nama">
			</li>
			<br>
			<li>
				<label for="tgl_lahir">Tgl_Lahir : </label>
				<input type="text" name="tgl_lahir" id="tgl_lahir">
			</li>
			<br>
			<li>
				<label for="telpon">Telpon : </label>
				<input type="text" name="telpon" id="telpon">
			</li>
			<br>
			<li>
				<label for="email">Email :</label>
				<input type="text" name="email" id="email">
			</li>
			<br>
			<li>
				<label for="jurusan">Keterangan:</label>
				<!-- <input type="text" name="jurusan" id="jurusan"> -->
			 	<select id="jurusan" name="jurusan">
				
                <option value="">Pilih</option>
                <option value="Warga Tetap">Warga Tetap</option>
                <option value="Warga Sementara">Warga Sementara</option>
                <option value="Lainnya">Lainnya</option>
                
                </select>


				</select>

			</li>
			<br>
			<li>
				<label for="gambar">Gambar :</label>
				<input type="file" name="gambar" id="gambar">
			</li>
			<br>
			<hr />
			<li>
				<button type="submit" name="submit">Tambah Data!</button>
			</li>
		</ol>

	</form>




</body>
</html>