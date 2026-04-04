<?php

$host = "gateway01.ap-south-1.prod.aws.tidbcloud.com";
$user = "jXsehH4VGkGFcas.root";
$pass = "SW7lNHTY5dYm6tZV";
$db   = "test";
$port = 4000;

$con = mysqli_init();

mysqli_ssl_set($con, NULL, NULL, NULL, NULL, NULL);

mysqli_real_connect($con, $host, $user, $pass, $db, $port, NULL, MYSQLI_CLIENT_SSL);

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
}

?>