<?php 
include("../../../../config/config.php");
session_start();

// loop ห้องพักทั้งหมด
// ORDER BY DESC(มากไปหาน้อย), ASC(น้อยไปหามาก);
$sql = "SELECT * FROM rooms WHERE status = 'Active' ORDER BY floor DESC;";
$query = mysqli_query( $c, $sql );

// จำนวนเตียงที่ ว่าง
$sql_bed_e = "SELECT * FROM beds WHERE status_bed = 'เตียงว่าง'";
$query_bed_e = mysqli_query( $c, $sql_bed_e);
$total_bed_e = mysqli_num_rows($query_bed_e);

// จำนวนเตียงที่จอง
$sql_bed_b = "SELECT * FROM beds WHERE status_bed = 'จองแล้ว'";
$query_bed_b = mysqli_query( $c, $sql_bed_b);
$total_bed_b = mysqli_num_rows($query_bed_b);

// จำนวนเตียงที่ Check-in
$sql_bed_i = "SELECT * FROM beds WHERE status_bed = 'check-in'";
$query_bed_i = mysqli_query( $c, $sql_bed_i);
$total_bed_i = mysqli_num_rows($query_bed_i);

// จำนวนเตียงที่ Check-out
$sql_bed_o = "SELECT * FROM beds WHERE status_bed = 'check-out'";
$query_bed_o = mysqli_query( $c, $sql_bed_o);
$total_bed_o = mysqli_num_rows($query_bed_o);

// จำนวนเตียงที่รอทำความสะอาด
$sql_bed_c = "SELECT * FROM beds WHERE status_bed = 'รอทำความสะอาด'";
$query_bed_c = mysqli_query( $c, $sql_bed_c);
$total_bed_c = mysqli_num_rows($query_bed_c);

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