<?php 
include ("../../../../config/config.php");
session_start();

$sql_room = "SELECT * FROM bookings";
$query_room = mysqli_query( $c, $sql_room );
$total_room = mysqli_num_rows($query_room);

$sql_user = "SELECT * FROM users";
$query_user = mysqli_query( $c, $sql_user );
$total_user = mysqli_num_rows($query_user);

include ("dashboard.html");
?>
