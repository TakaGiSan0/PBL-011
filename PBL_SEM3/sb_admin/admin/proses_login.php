<?php
session_start();
include '../koneksi/koneksi.php';
$nama = $_POST['nama'];
$user= $_POST['username'];
$pass = $_POST['password'];
$email = $_POST['email'];
$no_hp = $_POST['no_hp'];
$data = mysqli_query($koneksi, "select * from user where username='$user'");
$row = mysqli_fetch_array($data);
if (password_verify($pass, $row['password'])) {
    if (mysqli_num_rows($data) > 0) {
        echo "Login Berhasil";
        $_SESSION['username'] = $user;
        header("location: ../index2.php");

    }
} else {
    echo "Username dan Password Tidak Ada";
}

?>