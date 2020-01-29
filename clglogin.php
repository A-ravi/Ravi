<?php

 session_start();
if(isset($_SESSION['uid'])){
    header('location:clgdash.php');
}

include('dbcon.php');

if (isset($_POST['login']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    $qry = "SELECT * FROM `clgadmin` WHERE `username`='$username'AND `password`='$password'";
    $run = mysqli_query($con,$qry);
    $row = mysqli_num_rows($run);
    if($row < 1)
    {
?>
            <script>alert('Username or password wrong..!');window.open('clglogin.php','_self');</script>
<?php
    }
    else
    {
        $data = mysqli_fetch_assoc($run);
        
        $id = $data['id'];
        
       
        
        $_SESSION['uid'] = $id;
        header('location:clgdash.php');
    }
    
}


?>

<htm>
    <head>
        <title>College Admin Login </title>
    </head>
    <body>
        <h1 align="center">College Admin Login </h1>
        <form action="clglogin.php" method="POST" align="center">
            Username:<br>
            <input type="text" name="username"><br>
            Password:<br>
            <input type="password" name="password"><br>
            <input type="submit" name="login" value="Login">
        </form>
    </body>
</htm>