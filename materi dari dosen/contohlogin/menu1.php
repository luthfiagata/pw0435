<?php
session_start();
echo "<center><h1>HALAMAN MENU 1</h1>";
echo "<strong> Anda Login sebagai " . $_SESSION['namauser'] . "<br>";
echo "<p>Berikut ini adalah Menu pilihan anda</p></strong><br>";
echo "<p><a href=formTambah.php>TAMBAH CUSTOMER</a> | ";
echo "	 <a href= menu2.php>Menu 2</a> | ";
echo "	 <a href= menu3.php>Menu 3</a></p> ";
echo "<p><a href= logout.php>logout</a></p>";
echo "</center>";
?>

