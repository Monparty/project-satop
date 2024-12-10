<?php 
include ("../../../../config/config.php");
session_start();

// จำนวนการจองทั้งหมด
$sql_room = "SELECT * FROM bookings";
$query_room = mysqli_query( $c, $sql_room);
$total_room = mysqli_num_rows($query_room);

// จำนวน User
$sql_user = "SELECT * FROM users";
$query_user = mysqli_query( $c, $sql_user);
$total_user = mysqli_num_rows($query_user);

// จำนวนเตียงที่ว่าง
$sql_bed_e = "SELECT * FROM beds WHERE status_bed = 'เตียงว่าง'";
$query_bed_e = mysqli_query( $c, $sql_bed_e);
$total_bed_e = mysqli_num_rows($query_bed_e);

// จำนวนเตียงที่ Check-in
$sql_bed_i = "SELECT * FROM beds WHERE status_bed = 'check-in'";
$query_bed_i = mysqli_query( $c, $sql_bed_i);
$total_bed_i = mysqli_num_rows($query_bed_i);

// จำนวนเตียงที่ Check-out
$sql_bed_o = "SELECT * FROM beds WHERE status_bed = 'check-out'";
$query_bed_o = mysqli_query( $c, $sql_bed_o);
$total_bed_o = mysqli_num_rows($query_bed_o);

// ประเภทห้อง Private พัดลม
$sql_room_pp = "SELECT * FROM bookings WHERE room_type = 'ห้อง Private พัดลม'";
$query_room_pp = mysqli_query( $c, $sql_room_pp);
$total_room_pp = mysqli_num_rows($query_room_pp);

// ประเภทห้อง Private แอร์
$sql_room_pa = "SELECT * FROM bookings WHERE room_type = 'ห้อง Private แอร์'";
$query_room_pa = mysqli_query( $c, $sql_room_pa);
$total_room_pa = mysqli_num_rows($query_room_pa);

// ประเภทห้อง รวม
$sql_room_r = "SELECT * FROM bookings WHERE room_type = 'ห้องพักรวม'";
$query_room_r = mysqli_query( $c, $sql_room_r);
$total_room_r = mysqli_num_rows($query_room_r);

include ("dashboard.html");
?>
