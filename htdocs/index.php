<?php

require('../config/init.php');

$dbh = connect_to_db();

get_projects($dbh);

$smarty->display('index.tpl');

?>
