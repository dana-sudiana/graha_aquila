<?php 
// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "tutorialweb");


function query($query) {
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}
	return $rows;
}


function tambah($data) {
	global $conn;

	$nrp = htmlspecialchars($data["nrp"]);
	$nama = htmlspecialchars($data["nama"]);
	$tgl_upload = htmlspecialchars($data["tgl_upload"]);
	
	

	// upload nama
	$nama = upload();
	if( !$nama ) {
		return false;
	}

	$query = "INSERT INTO galeri
				VALUES
			  ('', '$nrp', '$nama', '$tgl_upload')
			";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}


function upload() {

	$namaFile = $_FILES['nama']['name'];
	$ukuranFile = $_FILES['nama']['size'];
	$error = $_FILES['nama']['error'];
	$tmpName = $_FILES['nama']['tmp_name'];

	// cek apakah tidak ada nama yang diupload
	if( $error === 4 ) {
		echo "<script>
				alert('pilih nama terlebih dahulu!');
			  </script>";
		return false;
	}

	// cek apakah yang diupload adalah nama
	$ekstensinamaValid = ['jpg', 'jpeg', 'png'];
	$ekstensinama = explode('.', $namaFile);
	$ekstensinama = strtolower(end($ekstensinama));
	if( !in_array($ekstensinama, $ekstensinamaValid) ) {
		echo "<script>
				alert('yang anda upload bukan nama!');
			  </script>";
		return false;
	}

	// cek jika ukurannya terlalu besar
	if( $ukuranFile > 1000000 ) {
		echo "<script>
				alert('ukuran nama terlalu besar!');
			  </script>";
		return false;
	}

	// lolos pengecekan, nama siap diupload
	// generate nama nama baru
	$namaFileBaru = uniqid();
	$namaFileBaru .= '.';
	$namaFileBaru .= $ekstensinama;

	move_uploaded_file($tmpName, 'img/' . $namaFileBaru);

	return $namaFileBaru;
}




function hapus($id) {
	global $conn;
	mysqli_query($conn, "DELETE FROM galeri WHERE id = $id");
	return mysqli_affected_rows($conn);
}


function ubah($data) {
	global $conn;

	$id = $data["id"];
	$nrp = htmlspecialchars($data["nrp"]);
	$nama = htmlspecialchars($data["nama"]);
	$tgl_upload = htmlspecialchars($data["tgl_upload"]);
	
	
	// cek apakah user pilih nama baru atau tidak
	if( $_FILES['nama']['error'] === 4 ) {
		$nama = $namaLama;
	} else {
		$nama = upload();
	}
	

	$query = "UPDATE galeri SET
				nrp = '$nrp',
				nama = '$nama',
				tgl_upload = '$tgl_upload',
				
			  WHERE id = $id
			";

	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);	
}


function cari($keyword) {
	$query = "SELECT * FROM galeri
				WHERE
			  nama LIKE '%$keyword%' OR
			  nrp LIKE '%$keyword%' OR
			  tgl_upload LIKE '%$keyword%' OR
			  
			";
	return query($query);
}


function registrasi($data) {
	global $conn;

	$username = strtolower(stripslashes($data["username"]));
	$password = mysqli_real_escape_string($conn, $data["password"]);
	$password2 = mysqli_real_escape_string($conn, $data["password2"]);

	// cek username sudah ada atau belum
	$result = mysqli_query($conn, "SELECT username FROM user WHERE username = '$username'");

	if( mysqli_fetch_assoc($result) ) {
		echo "<script>
				alert('username sudah terdaftar!')
		      </script>";
		return false;
	}


	// cek konfirmasi password
	if( $password !== $password2 ) {
		echo "<script>
				alert('konfirmasi password tidak sesuai!');
		      </script>";
		return false;
	}

	// enkripsi password
	$password = password_hash($password, PASSWORD_DEFAULT);

	// tambahkan userbaru ke database
	mysqli_query($conn, "INSERT INTO user VALUES('', '$username', '$password')");

	return mysqli_affected_rows($conn);

}


?>