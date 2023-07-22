<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<title>Document</title>
</head>
<body>
	<form method="post" action="loginaction.php">
		enter email: <input type="text" id="email" name="email"><br>
		enter password: <input type="text" id="pass" name="pass"><br><br>
		<input type="submit" name="submit" value="submit" id="login">
		<a href="forminsert.php">new registration </a>
	</form>
	<p id="p1"></p> 

	<script>
		$(document).ready(function(){
			$("#login").click(function(){
				var email =$("#email").val();
				var pass =$("#pass").val();
				$.ajax({
					type:"post",
					url:"loginaction.php",
					data:{eml:email,pas:pass}
				}).done(function(data){
					$("#p1").html(data);
				});
				return false;
			});
		});
	</script>

</body>
</html>
