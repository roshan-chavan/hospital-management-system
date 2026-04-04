<?php

$host = getenv("DB_HOST");
$user = getenv("DB_USER");
$pass = getenv("DB_PASSWORD");
$db   = getenv("DB_NAME");
$port = (int)getenv("DB_PORT");

$con = mysqli_init();

mysqli_ssl_set($con, NULL, NULL, NULL, NULL, NULL);

mysqli_real_connect($con, $host, $user, $pass, $db, $port, NULL, MYSQLI_CLIENT_SSL);

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

?>