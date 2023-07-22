<?php
include('connection.php');

    $name=$_REQUEST['name'];
    $sql="SELECT * FROM search_user WHERE name LIKE '$name'";
    $data=mysqli_query($conn,$sql);
    $total=mysqli_num_rows($data);
    
    if($total) {
        ?>
        <table border="1">
        <tr>
            <th>SL.No</th>
            <th>Name</th>
        </tr>
        <?php
        $i=1;
        while($result=mysqli_fetch_assoc($data))
        {
            ?>
            <tr>
                <td><?php echo $i;$i++; ?></td>
                <td><?php echo $result['name']?></td>
            </tr>
            <?php
        }
        ?>
        </table>
        <?php
    } else {
        echo "***No records found";
    }

?>