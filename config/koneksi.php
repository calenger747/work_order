<?php
	
	$dbhost = "localhost";
	$dbuser = "k0762615_pegawai";
	$dbpass = "PegawaiLrcom123!@#";
	$dbname = "k0762615_pegawai_1";

	$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

	if ($connect ->connect_error) {
		die('Koneksi gagal: '.$con->connect_error);
	}
?>