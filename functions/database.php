<?php


function connect_to_db($database = NULL)
{
	$DB_HOSTNAME = DB_HOSTNAME;
	$DB_DATABASE = DB_DATABASE;
	$DB_PORT     = DB_PORT;

	$DB_USERNAME = DB_USERNAME;
	$DB_PASSWORD = DB_PASSWORD;

	$dbh = new PDO('mysql:host=' . $DB_HOSTNAME . ';port=' . $DB_PORT . ';dbname=' . $DB_DATABASE . ';charset=utf8mb4', $DB_USERNAME, $DB_PASSWORD);

	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	$dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

	return $dbh;
}

function get_projects($dbh)
{
	$dbh = connect_to_db();

	$sql = "SELECT * FROM projects";

	$sth = $dbh->prepare($sql);
	$sth->execute();

	$records = array();
	$records = $sth->fetch(PDO::FETCH_ASSOC);
	echo '<pre>';
	var_dump($records);
	echo '</pre>';
}

?>
