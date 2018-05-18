<!DOCTYPE html>
<?php 
session_start();
//$_SESSION['namauser'];
if (empty($_SESSION['namauser'])) {
	echo "<h2>Anda belum login, Akses ditolak, silakan <a href=form_login.html>LOGIN DISINI</a></h2>";
}else{
 ?>

<html>
<head>
	<title></title>
</head>
<body>
<center>
<h2>Form Tambah Customer</h2>
 <form method="POST" action="prosesSimpan.php">
 	<table>
 		<tr>
 			<td>Kode Customer</td>
 			<td> : <input type="text" name="kode"></td>
 		</tr>
 		<tr>
 			<td>Nama Customer</td>
 			<td> : <input type="text" name="nama"></td>
 		</tr>
 		<tr>
 			<td>Alamat Customer</td>
 			<td> : <input type="text" name="alamat"></td>
 		</tr>
 		<tr>
 			<td colspan="2">
 				<input type="submit" name="submit" value="SIMPAN">
 				<input type="button" value="RESET" onclick="self.historyback()">
 			</td>
 		</tr>
 	</table>
 </form>
 </center>

</body>
</html>
<?php 
 } ?>