<?php
require 'functions.php';

// ambil data di URL
$id = $_GET["id"];

// query data warga_grahadbf berdasarkan id
$mhs = query("SELECT * FROM warga_grahadbf WHERE id = $id")[0];


// cek apakah tombol submit sudah ditekan atau belum
if( isset($_POST["submit"]) ) {
	
	// cek apakah data berhasil diubah atau tidak
	if( ubah($_POST) > 0 ) {
		echo "
			<script>
				alert('data berhasil diubah!');
				document.location.href = 'index.php';
			</script>
		";
	} else {
		echo "
			<script>
				alert('data gagal diubah!');
				document.location.href = 'index.php';
			</script>
		";
	}


}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Ubah Rumah Graha Aquila</title>
	<style>
body {background-color: powderblue;}
h1   {color: #ffffff;}
h1   {background-color: #ff5a0b;}
p    {color: red;}
</style>
</head>
<body>
	<h1>UBAH  RUMAH WARGA</h1>

	<form action="" method="post" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?= $mhs["id"]; ?>">
		<input type="hidden" name="gambarLama" value="<?= $mhs["gambar"]; ?>">
		<ol>
			<li>
				<hr />
				<label for="nrp">NOMER RUMAH : </label>
				<input type="text" name="nrp" id="nrp" required value="<?= $mhs["nrp"]; ?>">
			</li>
			<br>
			<li>
				<label for="nama">Nama       : </label>
				<input type="text" name="nama" id="nama" value="<?= $mhs["nama"]; ?>">
			</li>
			<br>
			<li>
				<label for="nama">Tgl_lahir  : </label>
				<input type="text" name="tgl_lahir" id="tgl_lahir" value="<?= $mhs["tgl_lahir"]; ?>">
			</li>
			<br>
			<li>
				<label for="nama">Telpon     : </label>
				<input type="text" name="telpon" id="nama" value="<?= $mhs["telpon"]; ?>">
			</li>
			<br>
			<li>
				<label for="email">Email     :</label>
				<input type="text" name="email" id="email" value="<?= $mhs["email"]; ?>">
			</li>
			<br>
			<li>
			<label for="jurusan">Keterangan:</label>
			<!-- <input type="text" name="jurusan" id="jurusan" value="<?= $mhs["jurusan"]; ?>"> -->
			
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
				<label for="gambar">FOTO   :</label> <br>
				<img src="img/<?= $mhs['gambar']; ?>" width="40"> <br>
				<input type="file" name="gambar" id="gambar">
			</li>
			<br>
			<hr />
			<li>
				<button type="submit" name="submit">Ubah Data!</button>
			</li>
		</ol>

	</form>




</body>
</html>