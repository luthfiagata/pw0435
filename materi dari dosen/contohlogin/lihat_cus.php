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
<h2 style="text-align: center;">Daftar</h2>
<center><table border="1">
<tr>
	<td>Kode Customer</td>
	<td>NAMA Customer</td>
	<td>Alamat Customer</td>
	<td colspan="2">Aksi</td>
</tr>

<?php 
	include "koneksi.php";
	$query = mysqli_query($konek,"SELECT * FROM customer");
	while ($tampil=mysqli_fetch_array($query)) {
		?>
		<tr>
		<td><?php echo $tampil['KodeCus']; ?></td>
		<td><?php echo $tampil['NamaCus']; ?></td>
		<td><?php echo $tampil['AlamatCus']; ?></td>
		<td><a href="ubah.php?KodeCus=<?php echo $tampil['KodeCus']; ?>">Ubah</a></td>
		<td><a href="hapus.php?KodeCus=<?php echo $tampil['KodeCus']; ?>">Hapus</a></td>
		</tr>
		<?php
	}

 ?>
 		<tr>
 			<td colspan="5">
 				<input type="submit" name="submit" value="SIMPAN">
 				<input type="button" value="RESET" onclick="self.historyback()">
 			</td>
 		</tr>
 	</table></center>
</body>
</html>
<?php } ?>