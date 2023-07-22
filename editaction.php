<?php
include('connection.php');

$name = $_REQUEST['name'];
$id = $_REQUEST['id'];
$email = $_REQUEST['email'];
$phn = $_REQUEST['phn'];

//image
$filename = $_FILES['uploadimage']['name'];
$tmpname = $_FILES['uploadimage']['tmp_name'];
$folder = 'image/'.$filename; 
move_uploaded_file($tmpname, $folder);

$sql = "UPDATE `user_ajax` SET `name`='$name', `email`='$email', `phone`='$phn',`picsource`='$folder' WHERE `id`='$id'";

$data = mysqli_query($conn, $sql);

if($data){
	header("Location:display.php");
}else{
	echo "not update";
}
?>
