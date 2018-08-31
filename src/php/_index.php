<?php
require "./_connect.php";

session_start();

$id = $_POST['user_id'];
$pass = $_POST['user_pass'];

$md5pass = md5($pass);

$sql="SELECT*FROM user WHERE userId = '$id' AND password='$md5pass'";
$res=mysqli_query($conn,$sql);

$count=mysqli_num_rows($res);

if($count==1){

    $_SESSION['id']=$id;
    $_SESSION['pw']=$md5pass;

    if(isset($_SESSION['id'])){
        echo "<script type = 'text/javascript'>
              alert(\"login success\");
              window.location.replace(\"http://localhost/timetable/dist/main.php\");
              </script>";
        
    }else{
        echo "<script>alert(\"fail\");history.back(-1);</script>";
        exit();
    }

}else{
    echo "<script>alert(\"not match id or pass $count ??\");history.back(-1);</script>";
    exit();
}
?>
