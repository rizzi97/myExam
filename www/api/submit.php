<?php

require 'requires.php';

// Create database connection
$connessione = Database::getInstance();

// Get matricola
$matricola = $_POST['matricola'];

$response = new Response();

//execute query
$query =$connessione->query("Select count(matricola_user) as numerorispostedate, count(case correct when 1 then 1 else null end) as numerocorrette  from users_answers inner join answers on id_answer=answers.id where users_answers.matricola_user=".$matricola);
//fetch result as an associative array
$summary = $query->fetch_array();

if($summary['numerorispostedate'] == $questions){
	$response->status ="success";

	// Set end time for given user 'matricola'
	$querysubmit = $connessione->query("UPDATE users set end=NOW() where matricola=$matricola");
	
	if($summary['numerocorrette'] >= 18) {
		$response->message = "Idoneo";
	}
	if($summary['numerocorrette'] < 18) {
		$response->message = "Non Idoneo";
	}

} else {
	$response->status="error";
	$response->message="Ti mancano ". $questions-$summary['numerorispostedate']." risposte";
}

print json_encode($response);

// Close database connection
$connessione->close();
