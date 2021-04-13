<?php
// Set up the database connection
$dsn = 'mysql:host=cep-database.cc4j4tsywdww.us-east-2.rds.amazonaws.com;dbname=concurrent_enrollment';
$username = 'admin';
$password = 'Passw0rd';
$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

try {
    $db = new PDO($dsn, $username, $password, $options);
} catch (PDOException $e) {
    $error_message = $e->getMessage();
    include('errors/db_error_connect.php');
    exit();
}
?>