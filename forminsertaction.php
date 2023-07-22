<?php
include('connection.php');
$name = $_REQUEST['name'];
$address= $_REQUEST['address'];
$email = $_REQUEST['email'];
$pass = md5($_REQUEST['pass']);
$person=is_array($_REQUEST['person']) ? implode(',', $_REQUEST['person']) : $_REQUEST['person'];

$foods= $_REQUEST['items'];
$place= $_REQUEST['place'];

//image
$filename = $_FILES['uploadimage']['name'];
$tmpname = $_FILES['uploadimage']['tmp_name'];
$folder = 'image/'.$filename; 
move_uploaded_file($tmpname, $folder);

$extra = is_array($_REQUEST['extra']) ? implode(',',$_REQUEST['extra']) : $_REQUEST['extra'];


$sql = "INSERT INTO `booking_table`(`name`, `address`, `email`, `password`,`person`, `f.items`, `place`, `image`, `extra`) 
        VALUES ('$name','$address','$email','$pass','$person','$foods','$place','$folder','$extra')";

$data = mysqli_query($conn, $sql);

if($data){
  echo "<script>
    alert('inserted data successfully');
    window.location.href ='login.php';
  </script>";
}else{
  echo "Not inserted";
}
