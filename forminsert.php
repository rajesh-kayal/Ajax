<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
	<title>Document</title>
</head>
<body>
	<h2>Restaurants Booking Table</h2>
  name: <input type="text" id="name" /><br>
  address: <input type="text" id="address" /><br>
  email : <input type="email" id="email" /><br>
  password: <input type="text" id="pass" /><br>

  preson: 
  <input type="checkbox" name="person[]" value="1"> 1
  <input type="checkbox" name="person[]" value="2"> 2
  <input type="checkbox" name="person[]" value="3"> 3
  <br>
  food items:
    <select id="items">
 <option value="">Select</option>
      <option value="Biryani">Biryani</option>
      <option value="Fish fry">Fish fry</option>
      <option value="Mutton Curry">Mutton Curry</option>
      <option value="Roshogullas">Roshogullas</option>
      <option value="Sandesh">Sandesh</option>
    </select><br>
    Place: <input type="radio" id="place" value="AC"> AC
    <input type="radio" id="place" value="NON AC"> NON AC
<br>
image upload <input type="file" name="uploadimage">
<br>
extra: 
 <input type="checkbox" name="extra[]" value="cola"> cola
  <input type="checkbox" name="extra[]" value="icecream"> icecream
  <input type="checkbox" name="extra[]" value="juice"> juice
  <br>
<input type="submit" name="submit" id="submit" value="Submit">
<input type="reset" name="reset" value="reset">
<div id="result"></div>
<script type="text/javascript">
        $(document).ready(function(){
          $("#submit").click(function(){
            var name = $("#name").val();
            var address =$("#address").val();
            var email = $("#email").val();
            var pass = $("#pass").val();
            var person=$("input[name='person[]']:checked").map(function(){
              return $(this).val();
            }).get();
            var items =$("#items").val();
            var place = $("#place").val();
            var image = $("input[name='uploadimage']")[0].files[0];
            var extra = $("input[name='extra[]']:checked").map(function(){
              return $(this).val();
            }).get();
            var formdata = new FormData();
            formdata.append('name', name);
            formdata.append('address', address);
            formdata.append('email', email);
            formdata.append('pass', pass);
            formdata.append('person', person);
            formdata.append('items', items);
            formdata.append('place', place);
            formdata.append('uploadimage', image);
            formdata.append('extra', extra);
            $.ajax({
              type: "post",
              url: "forminsertaction.php",
              data: formdata,
              contentType: false,
              processData: false
            }).done(function(data){
              $("#result").html(data);
            });
          });
        });


  </script>
</body>
</html>
