<?php 
include("../../../../config/config.php");
session_start();

// ใช้สำหรับแสดงข้อมูลตาม ID ที่เลือกมา
$bed_id = $_REQUEST['id'];
$sql = "SELECT beds.*, rooms.* FROM beds LEFT JOIN rooms ON beds.room_number = rooms.room_number WHERE bed_id=$bed_id";
//$sql = "SELECT * FROM beds WHERE bed_id=$bed_id";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

$sql_room_type = "SELECT * FROM room_type WHERE status = 'Active'";
$query_room_type = mysqli_query( $c, $sql_room_type );

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม update
if (isset($_REQUEST['update'])) {
    $sql = "UPDATE beds SET room_number=:room_number, status=:status, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    
    $stmt = $conn->prepare($sql);
    $room_number = $_POST["room_number"];
    $status = implode($_POST["status"]);

    $stmt->bindParam(":room_number", $room_number);
    $stmt->bindParam(":status", $status);

    $stmt->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "roomList.php";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

include ("editRoom.html");
?>