<?php

require 'requires.php';

$matricola = $_POST['matricola'];
$nome = $_POST['nome'];
$cognome = $_POST['cognome'];

class Response {
	public $status;
	public $message;
}

$message = new Response();

// Creo la connessione con il db
$connect = Database::getInstance();

// Eseguo la query per prelevare le domande
$insertuserdata = $connect->query("Insert into users (matricola,nome,cognome,start) values ('".$matricola."','".$nome."','".$cognome."',NOW())");
if($insertuserdata){
	$message->status="success";
	$message->message="Successo";
}
else{
	$message->status = "error";
	$message->message = "Con questa matricola, hai gi&agrave; eseguito il test";
}

echo json_encode($message);

/*
// Session cookie
setcookie('session-id', generateRandomString(), 0, "/");

// Error
/*echo json_encode([
    'error' => 'L\'esame è terminato',
    'status' => false,
]);*/

// Success
	/*
echo json_encode([
    'status' => true,
]);
*/