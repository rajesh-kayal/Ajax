<?php
include('connection.php');
$id= $_REQUEST['ep'];
$sql="SELECT * FROM  user_ajax WHERE id='$id'";
$data = mysqli_query($conn,$sql);
$result =mysqli_fetch_assoc($data);
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	Enter Name <input type="text" id="name" value="<?php echo $result['name']?>"><br> 
	<input type="text" id="uid" value="<?php echo $id?>" hidden>
	Enter Email<input type="text" id="email" value="<?php echo $result['email']?>"><br>
	Enter Phone<input type="text" id="phn" value="<?php echo $result['phone']?>"><br><br>
		
	<input type="submit" id="submit" value="Submit">
	<p id="p1"></p>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#submit").click(function(){
				var name =$("#name").val();
				var id =$("#uid").val();
				var email =$("#email").val();
				var phn =$("#phn").val();
				$.ajax({
					type:"post",
					url: "editaction.php",
					data:{nme:name,id:id,eml:email,phn:phn},
					error: function(){
						$("#p1").html("Error submitting form");
					}
				}).done(function(data){
					$("#p1").html(data);
				});
			});
		});
	</script>
</body>
</html>
