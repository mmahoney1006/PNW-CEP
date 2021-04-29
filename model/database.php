<?php
// Set up the database connection
$dsn = 'mysql:host=pnw-cep-db.c2xjkeyaldgu.us-east-2.rds.amazonaws.com;dbname=pnw_cep;port=3306';
$username = 'masterAdmin';
$password = 'McM3012516';
$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

try {
    $db = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    $error_message = $e->getMessage();
    include('errors/db_error_connect.php');
    exit();
}
?>