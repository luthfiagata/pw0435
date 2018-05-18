<?php
session_start();
include "koneksi.php";
$sql = mysqli_query($konek,"select * from user");
$hasil = mysqli_fetch_assoc($sql);

if(isset($_POST['username'])){
	if($_POST['username']==$hasil['username'] && $_POST['password']==$hasil['password']){
		$_SESSION['namauser']=$_POST['username'];

echo "<center>";
echo "<strong>Anda Login sebagai ".$_SESSION['namauser']."<br>";
echo "<p>Berikut ini adalah Menu pilihan anda</p></strong><br>";
echo "<p><a href= formTambah.php>Tambah Pembeli</a> | ";
echo "	 <a href= menu2.php>Menu 2</a> | ";
echo "	 <a href= menu3.php>Menu 3</a></p> ";
echo "</center>";

	}else{
		echo "Username dan Password tidak sesuai<br>";
		echo "Silakan <a href=form_login.html><b>LOGIN</b> kembali</a>";
	}
}

?>