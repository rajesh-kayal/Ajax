<?php
include('connection.php');
$sql = "SELECT * FROM user_ajax";
$data = mysqli_query($conn,$sql);

// $result=mysqli_fetch_assoc($data);

// print_r($result);
?>

<table border="1" style="display: flex;">
	<tr>
		<th>SL.NO</th>
		<th>Name</th>
		<th>Email</th>
		<th>Password</th>
		<th>Phone</th>
		<th>Action</th>
		<th>Picsource</th>
	</tr>
	<?php
	$i =1;
	while($result=mysqli_fetch_assoc($data))
	{
		?>
		<tr>
			<td><?php echo $i;$i++;?></td>
			<td><?php echo $result['name']?></td>
			<td><?php echo $result['email']?></td>
			<td><?php echo $result['password']?></td>
			<td><?php echo $result['phone']?></td>
			<td><img src="<?php echo $result['picsource']?>"height='100' width='100'></td>
		<td><a href="edit.php?ep=<?php echo $result['id']; ?>">Edit</a>
		<a href="delete.php?del=<?php echo $result['id']; ?>">Delete</a></td>
		</tr>
		<?php
		//$i++;
	}
	?>
</table>