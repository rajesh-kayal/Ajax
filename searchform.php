<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>search user</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
</head>
<body>
	Enter Name: <input type="text" id="name" />
	<input type="submit" name="submit" value="Submit" id="submit" />
	<p id="p1"></p>
			<script>
		$(document).ready(function(){
			$("#submit").click(function(){
				var name =$("#name").val();
				$.ajax({
					type:"post",
					url:"searchuseraction.php",
					data:{name:name} //1st name var 2nd name input id
				}).done(function(data){
					$("#p1").html(data);	
				});
			});
		});
	</script>
</body>
</html>