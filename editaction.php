<?php
include('connection.php');

$name = $_REQUEST['nme'];
$id = $_REQUEST['id'];
$email = $_REQUEST['eml'];
$phn = $_REQUEST['phn'];

$sql = "UPDATE `user_ajax` SET `name`='$name', `email`='$email', `phone`='$phn' WHERE `id`='$id'";

$data = mysqli_query($conn, $sql);

if($data){
	header("Location:display.php");
	// echo "<script>
	// 	alert('data update successfully');
	// 	window.location.href ='login.php';
	// </script>";
}else{
	echo "not update";
}
?>
