<?php
    $koneksi = mysqli_connect("localhost", "root", "", "jadwal");
    $id_guru = $_GET['id_dosen'];

    mysqli_query($koneksi, "delete from guru where id_dosen='$id_guru'");
    
    
    header('Location: guru.php');
