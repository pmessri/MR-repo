<?php
require_once '/var/www/html/mm.000//vendor/autoload.php';
$loader = new \Twig\Loader\FilesystemLoader('/var/www/html/mm.000/templates');
$twig = new \Twig\Environment($loader, [
	'cache' => '/var/www/html/mmm.000/compilation_cache',
	'cache' => false,
]);

$hostname = "localhost";
$username = "root";
$password = "passme123";
$database = "motionreptiles";

try {
	$dbh = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);
	// set the PDO error mode to exception
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e)
{
	echo "Connection failed: " . $e->getMessage();
}

$sql = "SELECT id,mm_id,images,snake_title,snake_internal_id,snake_price,snake_url,quantity,a_id,traits,sex,maturity,proven_breeder,price,dob_MM,dob_DD,dob_YY,diet_prey_state,diet_prey_food,description,negotiation,trades,availability,analytics_html,timestamp FROM morphmarket";

$count = 0;

foreach ($dbh->query($sql) as $row) {

	$count++;

	$id = $row['id'];
	$mm_id = $row['mm_id'];
	$images = $row['images'];
	$snake_title = $row['snake_title'];
	$snake_internal_id = $row['snake_internal_id'];
	$snake_price = $row['snake_price'];
	$snake_url = $row['snake_url'];
	$quantity = $row['quantity'];
	$a_id = $row['a_id'];
	$traits = $row['traits'];
	$sex = $row['sex'];
	$maturity = $row['maturity'];
	$proven_breeder = $row['proven_breeder'];
	$price = $row['price'];
	$dob_MM = $row['dob_MM'];
	$dob_DD = $row['dob_DD'];
	$dob_YY = $row['dob_YY'];
	$diet_prey_state = $row['diet_prey_state'];
	$diet_prey_food = $row['diet_prey_food'];
	$description = $row['description'];
	$negotiation = $row['negotiation'];
	$trades = $row['trades'];
	$availability = $row['availability'];
	$analytics_html = $row['analytics_html'];
	$timestamp = $row['timestamp'];

	$images_string = $images;
	$images_string = preg_replace('/\[\'/', '', $images_string);
	$images_string = preg_replace('/\'\]/', '', $images_string);
	$images_string = preg_replace('/, \'/', ',', $images_string);
	$images_string = preg_replace('/\',/', ',', $images_string);
	$images_array = preg_split('/,/', $images_string);

	$cnt = 0;
	for ($images_array as $img) {
		array_push($images_associative_array, ($cnt => $img));
		$cnt++;
	}
	print_r($images_associative_array);

	$variables = array(
		'count' => $count,
		'id' => $id,
		'mm_id' => $mm_id,
		'images' => $images,
		'images_array' => $images_array,
		'snake_title' => $snake_title,
		'snake_internal_id' => $snake_internal_id,
		'snake_price' => $snake_price,
		'snake_url' => $snake_url,
		'quantity' => $quantity,
		'a_id' => $a_id,
		'traits' => $traits,
		'sex' => $sex,
		'maturity' => $maturity,
		'proven_breeder' => $proven_breeder,
		'price' => $price,
		'dob_MM' => $dob_MM,
		'dob_DD' => $dob_DD,
		'dob_YY' => $dob_YY,
		'diet_prey_state' => $diet_prey_state,
		'diet_prey_food' => $diet_prey_food,
		'description' => $description,
		'negotiation' => $negotiation,
		'trades' => $trades,
		'availability' => $availability,
		'analytics_html' => $analytics_html,
		'analytics_html_strip_tags' => strip_tags($analytics_html),
		'timestamp' => $timestamp,
	);

	echo $twig->render('output.html', $variables, $images_associative_array);

}

?>
