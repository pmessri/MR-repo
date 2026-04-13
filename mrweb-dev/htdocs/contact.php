<?php

require('../config/init.php');

$dbh = connect_to_db();

$smarty->display('contact.tpl');

?>
