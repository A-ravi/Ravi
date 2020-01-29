<?php
session_start();
$id = $_REQUEST["id"];

include('dbcon.php');

$qry = "SELECT * FROM `uv_student` WHERE `id`='$id'";
$run = mysqli_query($con,$qry);
$data = mysqli_fetch_assoc($run);

//print_r($data);
// query for data insteration in database..
$qryins = "INSERT INTO `v_student`(`name`, `roll_no`, `class`, `branch`, `contact`, `email`, `address`) VALUES ('{$data['name']}','{$data['roll_no']}','{$data['class']}','{$data['branch']}','{$data['contact']}','{$data['email']}','{$data['address']}')";

$datains = mysqli_query($con,$qryins);

// query for data deletion in database..
$qrydel ="DELETE FROM `uv_student` WHERE `id`='{$data['id']}'";

$datadel = mysqli_query($con,$qrydel);

if($datadel == TRUE){
?>    <script>alert('Student Verified Successfully...');
        window.open('verify.php','_self')
        </script>
<?php
}


?>