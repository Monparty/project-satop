<?php 
include("../../../../config/config.php");
session_start();

// ใช้สำหรับแสดงข้อมูลตาม ID ที่เลือกมา
$bed_id = $_REQUEST['bed_id'];
$room_num = $_REQUEST['room_number'];
$state = $_GET['state'];

// ดึงข้อมูลจากตาราง rooms มาแสดง
$sql = "SELECT bookings.*, rooms.* FROM bookings LEFT JOIN rooms ON bookings.room_number = rooms.room_number WHERE bed_id=$bed_id ORDER BY booking_id DESC;";
$result = mysqli_query($c, $sql);
$row = mysqli_fetch_array($result);
extract($row);

if ($state=='e') {
    $status_bed = 'เตียงว่าง';
} elseif ($state=='b') {
    $status_bed = 'จองแล้ว';
} elseif ($state=='i') {
    $status_bed = 'Check-in';
} elseif ($state=='o') {
    $status_bed = 'Check-out';
} elseif ($state=='c') {
    $status_bed = 'รอทำความสะอาด';
}

// ใช้สำหรับ Update ข้อมูลผู้เข้าพัก
if (isset($_REQUEST['update'])) {
    $sql_update_bookings = "UPDATE bookings SET check_in_date=:check_in_date, check_out_date=:check_out_date, email=:email, price=:price, booker_name=:booker_name, phone=:phone, remark=:remark, gender=:gender, nationality=:nationality, id_card=:id_card, address=:address, payment=:payment, amountpeople=:amountpeople, updateAt=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";

    $stmt = $conn->prepare($sql_update_bookings);

    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $price = $_POST['price'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];

    $stmt->bindParam(":check_in_date", $check_in_date);
    $stmt->bindParam(":check_out_date", $check_out_date);
    $stmt->bindParam(":email", $email);
    $stmt->bindParam(":price", $price);
    $stmt->bindParam(":booker_name", $booker_name);
    $stmt->bindParam(":phone", $phone);
    $stmt->bindParam(":remark", $remark);
    $stmt->bindParam(":gender", $gender);
    $stmt->bindParam(":nationality", $nationality);
    $stmt->bindParam(":id_card", $id_card);
    $stmt->bindParam(":address", $address);
    $stmt->bindParam(":payment", $payment);
    $stmt->bindParam(":amountpeople", $amountpeople);

    $stmt->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม เตียงว่าง
if (isset($_REQUEST['empty'])) {
    $status_bed = "เตียงว่าง";

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม book
if (isset($_REQUEST['book'])) {
    $status_bed = "จองแล้ว";

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    // query Update ข้อมูลผู้เข้าพัก
    $sql_update_bookings = "UPDATE bookings SET check_in_date=:check_in_date, check_out_date=:check_out_date, email=:email, price=:price, booker_name=:booker_name, phone=:phone, remark=:remark, gender=:gender, nationality=:nationality, id_card=:id_card, address=:address, payment=:payment, amountpeople=:amountpeople, updateAt=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";
    $stmt2 = $conn->prepare($sql_update_bookings);

    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $price = $_POST['price'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];

    $stmt2->bindParam(":check_in_date", $check_in_date);
    $stmt2->bindParam(":check_out_date", $check_out_date);
    $stmt2->bindParam(":email", $email);
    $stmt2->bindParam(":price", $price);
    $stmt2->bindParam(":booker_name", $booker_name);
    $stmt2->bindParam(":phone", $phone);
    $stmt2->bindParam(":remark", $remark);
    $stmt2->bindParam(":gender", $gender);
    $stmt2->bindParam(":nationality", $nationality);
    $stmt2->bindParam(":id_card", $id_card);
    $stmt2->bindParam(":address", $address);
    $stmt2->bindParam(":payment", $payment);
    $stmt2->bindParam(":amountpeople", $amountpeople);

    $stmt2->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม check-in
if (isset($_REQUEST['check-in'])) {
    $status_bed = "check-in";

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    // query Update ข้อมูลผู้เข้าพัก
    $sql_update_bookings = "UPDATE bookings SET check_in_date=:check_in_date, check_out_date=:check_out_date, email=:email, price=:price, booker_name=:booker_name, phone=:phone, remark=:remark, gender=:gender, nationality=:nationality, id_card=:id_card, address=:address, payment=:payment, amountpeople=:amountpeople, updateAt=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";
    $stmt2 = $conn->prepare($sql_update_bookings);

    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $price = $_POST['price'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];

    $stmt2->bindParam(":check_in_date", $check_in_date);
    $stmt2->bindParam(":check_out_date", $check_out_date);
    $stmt2->bindParam(":email", $email);
    $stmt2->bindParam(":price", $price);
    $stmt2->bindParam(":booker_name", $booker_name);
    $stmt2->bindParam(":phone", $phone);
    $stmt2->bindParam(":remark", $remark);
    $stmt2->bindParam(":gender", $gender);
    $stmt2->bindParam(":nationality", $nationality);
    $stmt2->bindParam(":id_card", $id_card);
    $stmt2->bindParam(":address", $address);
    $stmt2->bindParam(":payment", $payment);
    $stmt2->bindParam(":amountpeople", $amountpeople);

    $stmt2->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม check-out
if (isset($_REQUEST['check-out'])) {
    $status_bed = "check-out";

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    // query Update ข้อมูลผู้เข้าพัก
    $sql_update_bookings = "UPDATE bookings SET check_out_at=CURRENT_TIMESTAMP, check_in_date=:check_in_date, check_out_date=:check_out_date, email=:email, price=:price, booker_name=:booker_name, phone=:phone, remark=:remark, gender=:gender, nationality=:nationality, id_card=:id_card, address=:address, payment=:payment, amountpeople=:amountpeople, updateAt=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";
    $stmt2 = $conn->prepare($sql_update_bookings);

    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $price = $_POST['price'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];

    $stmt2->bindParam(":check_in_date", $check_in_date);
    $stmt2->bindParam(":check_out_date", $check_out_date);
    $stmt2->bindParam(":email", $email);
    $stmt2->bindParam(":price", $price);
    $stmt2->bindParam(":booker_name", $booker_name);
    $stmt2->bindParam(":phone", $phone);
    $stmt2->bindParam(":remark", $remark);
    $stmt2->bindParam(":gender", $gender);
    $stmt2->bindParam(":nationality", $nationality);
    $stmt2->bindParam(":id_card", $id_card);
    $stmt2->bindParam(":address", $address);
    $stmt2->bindParam(":payment", $payment);
    $stmt2->bindParam(":amountpeople", $amountpeople);

    $stmt2->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

// ใช้สำหรับ Update ข้อมูลจะทำงานเมื่อกดปุ่ม clean
if (isset($_REQUEST['clean'])) {
    $status_bed = "รอทำความสะอาด";

    // query UPDATE beds
    $sql_update_beds = "UPDATE beds SET status_bed=:status_bed, updateAt=CURRENT_TIMESTAMP WHERE bed_id=$bed_id";
    $stmt = $conn->prepare($sql_update_beds);
    $stmt->bindParam(":status_bed", $status_bed);
    $stmt->execute();

    // query Update ข้อมูลผู้เข้าพัก
    $sql_update_bookings = "UPDATE bookings SET check_in_date=:check_in_date, check_out_date=:check_out_date, email=:email, price=:price, booker_name=:booker_name, phone=:phone, remark=:remark, gender=:gender, nationality=:nationality, id_card=:id_card, address=:address, payment=:payment, amountpeople=:amountpeople, updateAt=CURRENT_TIMESTAMP WHERE booking_id=$booking_id";
    $stmt2 = $conn->prepare($sql_update_bookings);

    $check_in_date = $_POST['check_in_date'];
    $check_out_date = $_POST['check_out_date'];
    $email = $_POST['email'];
    $price = $_POST['price'];
    $booker_name = $_POST['booker_name'];
    $phone = $_POST['phone'];
    $remark = $_POST['remark'];
    $gender = $_POST['gender'];
    $nationality = $_POST['nationality'];
    $id_card = $_POST['id_card'];
    $address = $_POST['address'];
    $payment = $_POST['payment'];
    $amountpeople = $_POST['amountpeople'];

    $stmt2->bindParam(":check_in_date", $check_in_date);
    $stmt2->bindParam(":check_out_date", $check_out_date);
    $stmt2->bindParam(":email", $email);
    $stmt2->bindParam(":price", $price);
    $stmt2->bindParam(":booker_name", $booker_name);
    $stmt2->bindParam(":phone", $phone);
    $stmt2->bindParam(":remark", $remark);
    $stmt2->bindParam(":gender", $gender);
    $stmt2->bindParam(":nationality", $nationality);
    $stmt2->bindParam(":id_card", $id_card);
    $stmt2->bindParam(":address", $address);
    $stmt2->bindParam(":payment", $payment);
    $stmt2->bindParam(":amountpeople", $amountpeople);

    $stmt2->execute();

    if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "แก้ไขข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "overview";
        });
        }, 1000);
        </script>';
    } else {
    echo "เกิดข้อผิดพลาดในการแก้ไขข้อมูล";
    }
}

include ("manage.html");
?>