<?php
include('connection.php');

$id = $_REQUEST['del'];

$sql = "DELETE FROM `user_ajax` WHERE `id` = $id";
$data = mysqli_query($conn, $sql);

if($data){
	header('Location: display.php');
}else{
	echo "Not Deleted";
}

?>