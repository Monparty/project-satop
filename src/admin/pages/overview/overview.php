<?php 
include("../../../../config/config.php");
session_start();

// loop ห้องพักทั้งหมด
// ORDER BY DESC(มากไปหาน้อย), ASC(น้อยไปหามาก);
$sql = "SELECT * FROM rooms WHERE status = 'Active' ORDER BY floor DESC;";
$query = mysqli_query( $c, $sql );

$roomsByFloor = [];
foreach ($query as $room) {
    $floor = $room['floor'];
    if (!isset($roomsByFloor[$floor])) {
        $roomsByFloor[$floor] = [];
    }
    $roomsByFloor[$floor][] = $room;
}

include ("overview.html");
?>