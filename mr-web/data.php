<?php
	
	// $id = $_POST['id'];
	$img_name = $_POST['thumbnail_id'];

	// echo "ID: ".$id;
	// echo "Image name: ".$img_name;


	// $data['title'] = "Title of ".$id." goes here";
	$data['title'] = "Title of ".$img_name." goes here";
	$data['desc'] = "Description of ".$img_name." goes here";

	echo json_encode($data);
?>