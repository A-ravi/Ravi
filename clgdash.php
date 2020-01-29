<?php
session_start();
if(isset($_SESSION['uid']))
{
    
}
else
{
    header('location:clglogin.php');
}

?>



<htm>
    <head>
        <title>Clg admin dashboard</title>
    </head>
    <body>
        <h1>College admin dashboard..</h1><br>
        <div align="center">
        <a href="logout.php">Logout</a><br>
        <input type="search" name="search" value="search">
        <br>
        <a href="verify.php">Verify students</a> <br>
        <a href="verifed.php">Verifed Students</a>
        </div>
    </body>
</htm>