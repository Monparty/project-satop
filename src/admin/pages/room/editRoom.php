<?php 
include("../../../../config/config.php");
session_start();

// ใช้สำหรับแสดงข้อมูลตาม ID ที่เลือกมา
$room_id = $_REQUEST['id'];
$sql = "SELECT * FROM rooms WHERE room_id=$room_id";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

$sql_room_type = "SELECT * FROM room_type WHERE status = 'Active'";
$query_room_type = mysqli_query( $c, $sql_room_type );

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม update
if (isset($_REQUEST['update'])) {
    $sql = "UPDATE rooms SET name=:name, floor=:floor, status=:status, room_number=:room_number, updateAt=CURRENT_TIMESTAMP WHERE room_id=$room_id";
    
    $stmt = $conn->prepare($sql);
    $name = $_POST['name'];
    $status = implode($_POST["status"]);
    $floor = $_POST["floor"];
    $room_number = $_POST["room_number"];

    $stmt->bindParam(":name", $name);
    $stmt->bindParam(":status", $status);
    $stmt->bindParam(":floor", $floor);
    $stmt->bindParam(":room_number", $room_number);

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