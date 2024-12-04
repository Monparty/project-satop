<?php 
include("../../../../config/config.php");
session_start();

$sql = " SELECT * FROM room_type WHERE status = 'Active'";
$query = mysqli_query( $c, $sql );

if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $name = $_POST["name"];
  $floor = $_POST["floor"];
  $room_number = $_POST["room_number"];
  $status = implode($_POST["status"]);
  $sql = "INSERT INTO rooms (name, floor, room_number, status, createAt)
  VALUES (:name, :floor, :room_number, :status, CURRENT_TIMESTAMP)";

  $stmt = $conn->prepare($sql);
  $stmt->bindParam(":name", $name);
  $stmt->bindParam(":floor", $floor);
  $stmt->bindParam(":room_number", $room_number);
  $stmt->bindParam(":status", $status);

  $stmt->execute();

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
