<?php
session_start();

$_SESSION['aggregate'] = '1';

header("Location: graphs.php");

?>