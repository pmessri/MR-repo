#!/bin/php
<?php

$images_string = "['0_c402ba6f-1c87-4e50-b583-59b3e46e040f.jpg', '1_1162af3c-a487-4465-9289-e452189fd154.jpg', '2_a8c9aa82-2dc1-4fa5-83b5-ca024de13ae8.jpg']";

$images_string = preg_replace('/\[\'/', '', $images_string);
$images_string = preg_replace('/\'\]/', '', $images_string);
$images_string = preg_replace('/, \'/', ',', $images_string);
$images_string = preg_replace('/\',/', ',', $images_string);
$splitted_values = preg_split('/,/', $images_string); 

print $images_string;

print "\n";

print_r($splitted_values);

?>
