<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<title>Document</title>
</head>
<body>
	
		enter name: <input type="text" id="name" name='name'><br>
		enter email: <input type="email" id="email" name='email'><br>
		enter password: <input type="password" id="pass" name="pass"><br>
		enter phone: <input type="number" id="phn" name="phn"><br><br>
		enter image <input type="file" name="uploadimage"><br>
		<input type="submit" name="submit" value="Submit" id="submit" >
		<a href="login.php">Already Login? </a>
		<p id="p1"></p>

	<script type="text/javascript">
$(document).ready(function(){
  $("#submit").click(function(){
    var name = $("#name").val();
    var email = $("#email").val();
    var pass = $("#pass").val();
    var phn = $("#phn").val();
    var image = $("input[name='uploadimage']")[0].files[0];
    var formdata = new FormData();
    formdata.append('name', name);
    formdata.append('email', email);
    formdata.append('pass', pass);
    formdata.append('phn', phn);
    formdata.append('uploadimage', image);
    $.ajax({
      type: "post",
      url: "forminsertaction.php",
      data: formdata,
      contentType: false,
      processData: false
    }).done(function(data){
      $("#p1").html(data);
    });
  });
});

	</script>

</body>
</html>
