<?php 
include("../../../../config/config.php");
session_start();

$sql = "SELECT beds.room_number, beds.status, beds.bed_id, beds.createAt, rooms.room_number, rooms.name, rooms.floor FROM beds LEFT JOIN rooms ON beds.room_number = rooms.room_number";
$query = mysqli_query( $c, $sql );

// ลบข้อมูล
if (isset($_REQUEST['delete'])) {
    $bed_id = $_REQUEST['delete'];

    $delete_stmt = $conn->prepare('DELETE FROM beds WHERE bed_id = :bed_id');
    $delete_stmt->bindParam(':bed_id', $bed_id);
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

include ("roomList.html");
?>