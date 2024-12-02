<?php 
include("../../../../config/config.php");
session_start();

// loop ห้องพักทั้งหมด
// ORDER BY DESC(มากไปหาน้อย), ASC(น้อยไปหามาก);
$sql = "SELECT * FROM rooms ORDER BY floor DESC;";
$query = mysqli_query( $c, $sql );

$roomsByFloor = [];
foreach ($query as $room) {
    $floor = $room['floor'];
    if (!isset($roomsByFloor[$floor])) {
        $roomsByFloor[$floor] = [];
    }
    $roomsByFloor[$floor][] = $room;
}

// ลบข้อมูล
if (isset($_REQUEST['delete'])) {
    $room_id = $_REQUEST['delete'];

    $delete_stmt = $conn->prepare('DELETE FROM rooms WHERE room_id = :room_id');
    $delete_stmt->bindParam(':room_id', $room_id);
    $delete_stmt->execute();

    echo '<script>
        setTimeout(function() {
        swal({
            title: "ลบข้อมูลสำเร็จ",  
            type: "success"
        }, function() {
            window.location = "roomList.php";
        });
        }, 1000);
        </script>';
}

include ("overview.html");
?>