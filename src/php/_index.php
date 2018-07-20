<?php
require "./_connect.php";

session_start();

$id = $_POST['user_id'];
$pass = $_POST['user_pass'];

$sql="SELECT*FROM user WHERE user_Id = '$id' AND pass='$pass'";

$res=mysqli_query($sql);
$count=mysqli_num_rows($res);

if($count==1){

    $_SESSION['id']=$id;

    if(isset($_SESSION['id'])){

        header['Location: ..../public/main.php'];
        
    }else{
        echo "<script>alert(\"fail\");history.back(-1);</script>";
        exit();
    }

}else{
    echo "<script>alert(\"not match id or pass\");history.back(-1);</script>";
    exit();
}
?>
