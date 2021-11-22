<?php 
// koneksi ke database
$conn = mysqli_connect("localhost", "root", "", "phpmvc");


function query($query) {
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows = [];
	while( $row = mysqli_fetch_assoc($result) ) {
		$rows[] = $row;
	}
	return $rows;
}


function cari($keyword) {
	$query = "SELECT * FROM mahasiswa
				WHERE
			  nama LIKE '%$keyword%' OR
			  nomer_rmh LIKE '%$keyword%' OR
			  nrp LIKE '%$keyword%' OR
			  
			  email LIKE '%$keyword%' OR
			  jurusan LIKE '%$keyword%'
			";
	return query($query);
}



?>