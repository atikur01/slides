<?php
require_once( __DIR__ . '/constants.php' );
/* ============================================ */
$servername = "localhost";

$database = "invisibl_a_main_admin";

/* ============================================ */

$username = "root";

$password ='';

/* ============================================ */


$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>