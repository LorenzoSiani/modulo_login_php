<?php
// Connessione al database (sostituisci con le tue credenziali)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "prova";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica della connessione al database
if ($conn->connect_error) {
    die("Connessione fallita: " . $conn->connect_error);
}

$email = $_POST['email'];
$password = $_POST['password'];

$sql = "SELECT * FROM user WHERE Email = '$email' AND Password = '$password'";


$result = $conn->query($sql);

if ($result->num_rows > 0){
    echo "Login riuscito";
}else{
    echo "Credenziali sbagliate, riprova!";
}

$conn->close();

?>