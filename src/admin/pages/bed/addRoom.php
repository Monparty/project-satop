<?php 
include("../../../../config/config.php");
session_start();

$sql = "SELECT * FROM rooms WHERE status = 'Active'";
$query = mysqli_query( $c, $sql );

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $room_number = $_POST["room_number"];
  $amountBed = $_POST["amountBed"];
  $status = implode($_POST["status"]);
  $sql = "INSERT INTO beds (room_number, status, createAt)
  VALUES (:room_number, :status, CURRENT_TIMESTAMP)";

  for ($i = 0; $i < $amountBed; $i++) {
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(":room_number", $room_number);
  $stmt->bindParam(":status", $status);
  $stmt->execute();
}

  if ($stmt->rowCount() > 0) {
    echo '<script>
        setTimeout(function() {
        swal({
            title: "บันทึกข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "roomList.php";
        });
        }, 1000);
      </script>';
      
  } else {
    echo "เกิดข้อผิดพลาดในการบันทึกข้อมูล";
  }
}
include ("addRoom.html");
?>
