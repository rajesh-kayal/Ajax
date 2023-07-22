<?php
include('connection.php');

$email =$_REQUEST['eml'];
$pass =md5($_REQUEST['pas']);
// $email= $_REQUEST['email'];
// $pass= md5($_REQUEST['pass']);

$sql= "SELECT * FROM  `user_ajax` WHERE email='$email' AND password='$pass'";
$data = mysqli_query($conn,$sql);
$total = mysqli_num_rows($data);
$result = mysqli_fetch_assoc($data);

if($result){
	//echo "Login successful";
		header("Location:display.php");
}else{
	echo "Login failed";
}
 ?>