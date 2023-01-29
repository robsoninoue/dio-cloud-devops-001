<?php

// Hardcoded only to class. The best practice is create a .env

$servername = "mysql-connection";
$username = "root";
$password = "Senha123"; // Only to class. NEVER, NEVER, I said NEVER do this in others environments
$database = "meubanco";

$link = new mysqli($servername, $username, $password, $database);

if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_errno());
    exit();
}
?>