<?php
	
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "";
	$dbname = "db_pegawai";

	// $dbhost = "localhost";
	// $dbuser = "k0762615_pegawai";
	// $dbpass = "PegawaiLrcom123!@#";
	// $dbname = "k0762615_pegawai_1";

	$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

	if ($con ->connect_error) {
		die('Koneksi gagal: '.$con->connect_error);
	}
?>