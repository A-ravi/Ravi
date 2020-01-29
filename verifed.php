<?php
session_start();
include('dbcon.php');

function showdata(){
    global $con;
    $qry = "SELECT * FROM `v_student`";
    $run = mysqli_query($con,$qry);
    if($run == TRUE)
    {   $count=0;
        while($data = mysqli_fetch_assoc($run)){
            $count=$count+1;
            ?>
            <tr>
                <td><?php echo $count ?> </td>
                <td><?php echo $data['name']?></td>
                <td><?php echo $data['roll_no']?></td>
                <td><?php echo $data['class']?></td>
                <td><?php echo $data['branch']?></td>
                <td><?php echo $data['contact']?></td>
                <td><?php echo $data['email']?></td>
                <td><?php echo $data['address']?></td>
                <td><a href="sendemail.php?id=<?php echo $data['id']; ?>">Send Email</a></td>
            </tr>
<?php
        }
    }
    else
    {
            // write the else part if data is not fetch..
    }
}

?>


<htm>
    <head>
        <title>Verifed Student</title>
    </head>
    <body>
        <h1>List of Verifed Students</h1>
        <a href="clgdash.php">back to dashboard</a>
        <table width="90%" border="1">
            <tr>
                <td>Sr.no</td>
                <td>Name of student</td>
                <td>Roll no</td>
                <td>Class</td>
                <td>Branch</td>
                <td>Contact No</td>
                <td>E-mail Id</td>
                <td>Address</td>
                <td>Send Msg</td>
            </tr>  
             <tr><?php showdata(); ?> </tr>
             
        </table>
    </body>
</htm>