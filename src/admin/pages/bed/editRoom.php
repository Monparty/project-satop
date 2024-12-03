<?php 
include("../../../../config/config.php");
session_start();

// ใช้สำหรับแสดงข้อมูลตาม ID ที่เลือกมา
$bed_id = $_REQUEST['id'];
$sql = "SELECT beds.*, rooms.* FROM beds LEFT JOIN rooms ON beds.room_number = rooms.room_number WHERE bed_id=$bed_id";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

// ใช้แสดงรูปภาพ
$stmt = $conn->prepare($sql);
$stmt->execute();

$sql_room_type = "SELECT * FROM room_type WHERE status = 'Active'";
$query_room_type = mysqli_query( $c, $sql_room_type );

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม update
if (isset($_REQUEST['update'])) {
    $sql = "UPDATE rooms SET name=:name, roomdesc=:roomdesc, price=:price, roomabout=:roomabout, bed=:bed, floor=:floor, amountpeople=:amountpeople, facility1=:facility1, facility2=:facility2, facility3=:facility3, facility4=:facility4, facility5=:facility5, facility6=:facility6, facility7=:facility7, facility8=:facility8, status=:status, room_number=:room_number, image=:image_base64, image2=:image_base642, image3=:image_base643, image4=:image_base644, image5=:image_base645, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    
    $stmt = $conn->prepare($sql);
    $name = $_POST['name'];
    $roomdesc = $_POST["roomdesc"];
    $price = $_POST["price"];
    $roomabout = $_POST["roomabout"];
    $bed = $_POST["bed"];
    $floor = $_POST["floor"];
    $amountpeople = $_POST["amountpeople"];
    $status = implode($_POST["status"]);
    $room_number = $_POST["room_number"];

    $stmt->bindParam(":name", $name);
    $stmt->bindParam(":roomdesc", $roomdesc);
    $stmt->bindParam(":price", $price);
    $stmt->bindParam(":roomabout", $roomabout);
    $stmt->bindParam(":bed", $bed);
    $stmt->bindParam(":floor", $floor);
    $stmt->bindParam(":amountpeople", $amountpeople);
    $stmt->bindParam(":status", $status);
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