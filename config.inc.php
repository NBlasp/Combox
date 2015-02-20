<?php
$dbhost="localhost";
$dbname="basededatos";
$dbuser="usuario";
$dbpass="clave";

$db = new mysqli($dbhost,$dbuser,$dbpass,$dbname);
if ($db->connect_errno) {
	die ("<h1>Fallo al conectar a MySQL: (" . $db->connect_errno . ") " . $db->connect_error."</h1>");
}
?>