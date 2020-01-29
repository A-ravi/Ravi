<?php

 session_start();
if(isset($_SESSION['uid'])){
    header('location:clgdash.php');
}

include('dbcon.php');

if (isset($_POST['submit']))
{
    $clgname = $_POST['clgname'];
    $clgregnum = $_POST['regnum'];
    $clgaddress = $_POST['address'];
    $clgdistrict = $_POST['district'];
    $clgcity = $_POST['city'];
    $prinpname = $_POST['prinpname'];
    $clgemail = $_POST['clgemail'];
    $clgmob = $_POST['clgmob'];
    $clgweb = $_POST['clgweb'];
    $clgaff = $_POST['clgaff'];

    $qry = "INSERT INTO `uv_college`(`clgname`,`clgreg`, `address`, `district`, `city`, `principalname`, `emailid`, `mobileno`, `website`, `university`) VALUES ('{$clgname}','{$clgregnum}','{$clgaddress}','{$clgdistrict}','{$clgcity}','{$prinpname}','{$clgemail}','{$clgmob}','{$clgweb}','{$clgaff}')";
    $run = mysqli_query($con,$qry);
   // $row = mysqli_num_rows($run);
    if($run == FALSE)
    {
?>
            <script>alert('Data not submitted..!!');//window.open('clglogin.php','_self');</script>
<?php
    }
    else
    {/*
        $data = mysqli_fetch_assoc($run);
        
        $id = $data['id'];
        $_SESSION['uid'] = $id;*/
       //header('location:clglogin.php');
?>
            <script>alert('Data submitted Sucessfully..!!');window.open('index.php','_self');</script>
<?php  
    }
    
}


 

?>




<!DOCTYPE html>
<html>
<head>
	<title>Collge Registration</title>
</head>
<body>
	<h1 align="center">College Registration form</h1>
	<form align="center" method="POST">
		Enter the college name:<br>
		<input type="text" name="clgname"><br>

		Enter College registration number:<br>
		<input type="text" name="regnum"><br>
		
		Enter College Address:<br>
		<input type="text" name="address"><br>

		Enter College District:<br>
		<input type="text" name="district"><br>

		Enter College City/Town/Village:<br>
		<input type="text" name="city"><br>

		Enter Name of Principal of  College :<br>
		<input type="text" name="prinpname"><br>

		Enter Offical E-mail of College :<br>
		<input type="text" name="clgemail"><br>

		Enter Offical Number of College:<br>
		<input type="text" name="clgmob"><br>

		Enter Offical Website of College:<br>
		<input type="text" name="clgweb"><br>

		Enter Affliating University of College:<br>
		<input type="text" name="clgaff"><br>

		<input type="submit" name="submit" value="Register">

	</form>
</body>
</html>