<?php
require "./_connect.php";

session_start();

$id = $_POST['user_id'];
$pass = $_POST['user_pass'];

$sql="SELECT*FROM user WHERE userId = 'user_id' AND pass='user_pass";

$res=mysql_query($sql);
$count=mysql_num_rows($res);

if($count==1){

    $_SESSION['login']=$id;

    if(isset($_SESSION['login'])){

        header['Location: ..../public/main.php'];
        
    }else{
        echo "<script>alert(\"fail\");</script>";
        exit();
    }

}else{
    echo "<script>alert(\"not match id or pass\");</script>";
    exit();
}
?>
