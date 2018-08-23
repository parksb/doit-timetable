<?php
require "./_connect.php";

if(isset($_GET['team'])){
   
   
    $team=$_GET['team'];
    $team_member = $team['member'];

    $tok=strtok($team_member,",");

    $time=array();

    while($tok !==false){
        $sql="SELECT*FROM user WHERE id='$tok'";
        $user=mysqli_query($conn,$sql);
        //time 에 user 시간 넣기
        $u_time=$user['time'];
        
        $utok=strtok($u_time,",");

        while($utok!==false){

            array_push($time,$utok);

            $utok=strtok(",");
        }
        


        $tok=strtok(",");
    }

    //정렬, 압축? 필요
    



}else{

    echo "<script>alert(\"back selcet page,GET doesn't exit\");history.back(-1);</script>";
}
?>