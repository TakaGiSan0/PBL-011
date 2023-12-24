<?php
include '../koneksi/koneksi.php';
$pass = $_POST['password'];
$pass_acak=password_hash($pass, PASSWORD_DEFAULT);
//var_dump($pass_acak);

$errors = [];

// Ambil data dari formulir pendaftaran
$nama = $_POST['nama'];
$email = $_POST['email'];
$username = $_POST['username'];
$no_hp = $_POST['no_hp'];

// Periksa ketersediaan nama
$query_check_nama = "SELECT * FROM user WHERE nama = '$nama'";
$result_nama = mysqli_query($koneksi, $query_check_nama);

if (mysqli_num_rows($result_nama) > 0) {
    $errors['nama'] = "Nama sudah terdaftar, silakan pilih nama lain.";
}

// Periksa ketersediaan email
$query_check_email = "SELECT * FROM user WHERE email = '$email'";
$result_email = mysqli_query($koneksi, $query_check_email);

if (mysqli_num_rows($result_email) > 0) {
    $errors['email'] = "Email sudah terdaftar, silakan gunakan email lain.";
}

// Periksa ketersediaan username
$query_check_username = "SELECT * FROM user WHERE username = '$username'";
$result_username = mysqli_query($koneksi, $query_check_username);

if (mysqli_num_rows($result_username) > 0) {
    $errors['username'] = "Username sudah terdaftar, silakan pilih username lain.";
}

// Periksa ketersediaan nomor telepon
$query_check_no_hp = "SELECT * FROM user WHERE no_hp = '$no_hp'";
$result_no_hp = mysqli_query($koneksi, $query_check_no_hp);

if (mysqli_num_rows($result_no_hp) > 0) {
    $errors['no_hp'] = "Nomor HP sudah terdaftar, silakan gunakan nomor HP lain.";
}

if (empty($errors)) {
    $input = mysqli_query($koneksi,"INSERT INTO user (nama, username, password, email, no_hp) VALUES('$nama','$username','$pass_acak','$email','$no_hp')") or die(mysqli_connect_error());
        if($input){
            echo "Data Berhasil Disimpan";
            header("location:../register.html");
        }   
} else {
    echo json_encode($errors);
}
?> 
