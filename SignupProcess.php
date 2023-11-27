<?php
// Connessione al database (sostituisci con le tue credenziali)
include "db.php";


$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];

$sql = "INSERT INTO user (Username, Email, Password) VALUES ('$username', '$email', '$password')";
echo $sql;

if ($conn->query($sql) === TRUE){
    echo "REGISTRAZIONE AVVENUTA CON SUCCESSO";
}else{
    echo "VERIFICA I DATI" . $conn->error;
}

$conn->close();

?>
