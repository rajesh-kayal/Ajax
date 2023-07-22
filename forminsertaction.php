<?php
include('connection.php');
$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$pass = md5($_REQUEST['pass']);
$phn = $_REQUEST['phn'];

//image
$filename = $_FILES['uploadimage']['name'];
$tmpname = $_FILES['uploadimage']['tmp_name'];
$folder = 'image/'.$filename; 
move_uploaded_file($tmpname, $folder);

$sql = "INSERT INTO `user_ajax`( `name`, `email`, `password`, `phone`,`picsource`) VALUES ('$name','$email','$pass','$phn','$folder')";

$data = mysqli_query($conn, $sql);

if($data){
  echo "<script>
    alert('inserted data successfully');
    window.location.href ='login.php';
  </script>";
}else{
  echo "Not inserted";
}
