<?php
	
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "db_pegawai";

	$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

	if ($con ->connect_error) {
		die('Koneksi gagal: '.$con->connect_error);
	}
?>