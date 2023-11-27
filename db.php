<?php

$db ="prova";
$db_host = "localhost";
$db_user = "root";
$db_password = "";
$conn= new mysqli($db_host,$db_user,$db_password);
if (!$conn) 
{
	print "si è verificato un problema tecnico";
	exit;
}else {
	print "Conn Ok";
}
mysqli_select_db($conn,$db);

?>