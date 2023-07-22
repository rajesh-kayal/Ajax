<?php

include('connection.php');
$name =$_REQUEST['nme'];
$email =$_REQUEST['eml'];
$pass =md5($_REQUEST['pas']);
$phn =$_REQUEST['num'];

	$sql = "INSERT INTO `user_ajax`( `name`, `email`, `password`, `phone`) VALUES ('$name','$email','$pass','$phn')";

	$data = mysqli_query($conn, $sql);

	if($data){
		echo "<script>
			alert('inserted data successfully');
			window.location.href ='login.php';
		</script>";
		
		 //header("Location:login.php");
	}else{
		echo "Not inserted";
	}

