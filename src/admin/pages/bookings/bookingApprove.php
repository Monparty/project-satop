<?php 
include("../../../../config/config.php");
session_start();

$booking_id = $_REQUEST['id'];
$sql = "SELECT * FROM bookings WHERE booking_id = $booking_id";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม update
if (isset($_REQUEST['update'])) {
    $sql = "UPDATE bookings SET remark=:remark, booking_status=:booking_status, approve_at=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";

    $booking_status = "ชำระเงินเรียบร้อย";
    $remark = $_POST["remark"];

    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":remark", $remark);
    $stmt->bindParam(":booking_status", $booking_status);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "ตรวจสอบข้อมูลการชำระเงินเรียบร้อย",  
            type: "success"
        }, function() {
            window.location = "bookingList.php";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

if (isset($_REQUEST['cancel'])) {
    $sql = "UPDATE bookings SET remark=:remark, booking_status=:booking_status, approve_at=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";

    $booking_status = "ข้อมูลการชำระเงินไม่ถูกต้อง";
    $remark = $_POST["remark"];
    
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(":remark", $remark);
    $stmt->bindParam(":booking_status", $booking_status);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "ตรวจสอบข้อมูลการชำระเงินเรียบร้อย",  
            type: "success"
        }, function() {
            window.location = "bookingList.php";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

include ("bookingApprove.html");
?>
