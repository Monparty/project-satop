<?php 
include("../../../../config/config.php");
session_start();

// ใช้สำหรับแสดงข้อมูลตาม ID ที่เลือกมา
$bed_id = $_REQUEST['bed_id'];
$room_num = $_REQUEST['room_number'];

// ดึงข้อมูลจากตาราง rooms มาแสดง
$sql = "SELECT beds.*, rooms.* FROM beds LEFT JOIN rooms ON beds.room_number = rooms.room_number WHERE bed_id=$bed_id";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม update
if (isset($_REQUEST['update'])) {
    $bed_id = $_POST['bed_id'];
    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $room_number = $_POST['room_number'];
    $price = $_POST['price'];
    //$car_number = $_POST['car_number'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];
    $room_type = $_POST['room_type'];

    $status_bed = "check-in";

    //empty book check-in check-out clean

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    // query INSERT bookings
    $sql_insert_bookings = "INSERT INTO bookings (bed_id, check_in_date, check_out_date, email, booker_name, phone, remark, room_number, price, check_in_at, gender, nationality, id_card, address, payment, room_type, amountpeople)
    VALUES (:bed_id, :check_in_date, :check_out_date, :email, :booker_name, :phone, :remark, :room_number, :price, CURRENT_TIMESTAMP, :gender, :nationality, :id_card, :address, :payment, :room_type, :amountpeople)";

    $stmt2 = $conn->prepare($sql_insert_bookings);
 
    $stmt2->bindParam(":bed_id", $bed_id);
    $stmt2->bindParam(":check_in_date", $check_in_date);
    $stmt2->bindParam(":check_out_date", $check_out_date);
    $stmt2->bindParam(":email", $email);
    $stmt2->bindParam(":booker_name", $booker_name);
    $stmt2->bindParam(":phone", $phone);
    $stmt2->bindParam(":remark", $remark);
    $stmt2->bindParam(":room_number", $room_number);
    $stmt2->bindParam(":price", $price);
    //$stmt->bindParam(":car_number", $car_number);
    $stmt2->bindParam(":gender", $gender);
    $stmt2->bindParam(":nationality", $nationality);
    $stmt2->bindParam(":id_card", $id_card);
    $stmt2->bindParam(":address", $address);
    $stmt2->bindParam(":payment", $payment);
    $stmt2->bindParam(":room_type", $room_type);
    $stmt2->bindParam(":amountpeople", $amountpeople);

    $stmt2->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview.php";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

include ("add.html");
?>