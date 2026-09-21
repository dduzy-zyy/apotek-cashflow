<?php
$host='localhost'; $db='apotek_cashflow'; $user='root'; $pass='';
try{$pdo=new PDO("mysql:host=$host;dbname=$db;charset=utf8mb4",$user,$pass,[PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION,PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC]);}catch(PDOException $e){die('Koneksi database gagal. Import database.sql terlebih dahulu.');} session_start();
?>