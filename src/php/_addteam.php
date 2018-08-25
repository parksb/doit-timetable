<?php
    require "./_connect.php";
    session_start();
    $team_id=$_GET['team'];

    $sql="SELECT*FROM team WHERE id='$team_id'";
    $team=mysqli_query($conn,$sql);
    $team_m=$team['member'];
    if(isset($_SESSION['id'])){
        $id=$_SESSION['id'];
        $id=$id['id'];
        
        $sql="UPDATE team SET member ='$team_m,$id' WHERE id='$team_id'";
    }else{
        echo "<script>alert(\"please log in\");history.back(-1);</script>";
    }
    




?>