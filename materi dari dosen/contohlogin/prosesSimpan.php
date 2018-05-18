<?php 
include "koneksi.php";
session_start();
$nama = $_POST['nama'];
$kode = $_POST['kode'];
$alamat = $_POST['alamat'];

if (isset($_POST['submit'])) {
	$sql = "INSERT INTO customer (KodeCus, NamaCus, AlamatCus) values ('$kode','$nama','$alamat')";
	$input = mysqli_query($konek, $sql);
	//print_r($input);
	if ($input) {
		echo "<script>alert('Data Berhasil Ditambahkan');</script>";
		header('location: lihat_cus.php'); 
	}else{
		echo "Data gagal disimpan"; 
		//print_r($input);
	}
}
 ?>