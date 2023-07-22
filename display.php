<?php
session_start();
$id=$_SESSION['id'];
include('connection.php');
$sql = "SELECT * FROM `booking_table` WHERE id='$id'";
$data = mysqli_query($conn,$sql);

// $result=mysqli_fetch_assoc($data);

// print_r($result);
?>

<table border="1">
	<tr>
		<th>SL.NO</th>
		<th>Name</th>
		<th>Address</th>
		<th>Email</th>
		<th>Password</th>
		<th>Person</th>
		<th>Food Items</th>
		<th>Place</th>
		<th>Picsource</th>
		<th>extra</th>
		<th>Action</th>
	</tr>
	<?php
	$i =1;
	while($result=mysqli_fetch_assoc($data))
	{
		?>
		<tr>
			<td><?php echo $i;$i++;?></td>
			<td><?php echo $result['name']?></td>
			<td><?php echo $result['address']?></td>
			<td><?php echo $result['email']?></td>
			<td><?php echo $result['password']?></td>
			<td><?php echo $result['person']?></td>
			<td><?php echo $result['f.items']?></td>
			<td><?php echo $result['place']?></td>
			<td><img src="<?php echo $result['image']?>"height='100' width='100'></td>
			<td><?php echo $result['extra']?></td>
		<td><a href="edit.php?ep=<?php echo $result['id']; ?>">Edit</a>
		<a href="delete.php?del=<?php echo $result['id']; ?>">Delete</a></td>
		</tr>
		<?php
	}
	?>
</table>