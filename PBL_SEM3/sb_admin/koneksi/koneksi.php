<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pbl3";
// Buat koneksi
$koneksi = mysqli_connect($servername, $username, $password, $dbname);
// Cek koneksi
if (!$koneksi) {
    echo "Koneksi Gagal" . die(mysqli_error($koneksi));
}
//echo "koneksi sukses";
?>