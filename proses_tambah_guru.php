<?php
$koneksi = mysqli_connect("localhost", "root", "", "jadwal");
$nama = $_POST['Nama Dosen'];
$ga = $_POST['gelar_akademik'];
$ja = $_POST['jabatan_akademik'];

$insert =  mysqli_query($koneksi, "insert into guru set nama='$nama', gelar_akademik='$ga', jabatan_akademik='$ja'");


header('Location: guru.php');
