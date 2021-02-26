<?php
session_start();
if($_SESSION['status']!="login"){
    header("location:index.php?pesan=belum_login");
} 
if ($_SESSION['admin'] != "1") {
    header("location:action/logout.php");
}
include 'inc/header.php';

$id = $_GET['id'];

$get_data = mysqli_query($db, "SELECT * FROM users WHERE id = '$id'");
$data = mysqli_fetch_assoc($get_data);

ini_set( 'display_errors', 1 );   
error_reporting( E_ALL );    
$from = "no-reply-ti2020@gmail.com";    
$to = $data['email'];    
$subject = "USERNAME DAN PASSWORD PEMILTANG";    
$message = "NIM : " . $data['nim'] . "<br>Password : " . $data['password'] . "<br>Link : https://bit.ly/39nBLXl";
$headers = "From:" . $from;
mail($to,$subject,$message, $headers);    
echo "Pesan email sudah terkirim.";

?>