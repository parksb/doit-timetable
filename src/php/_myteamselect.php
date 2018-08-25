<html>
<body>
    choose team
<?php

    require "./_connect.php";
    session_start();
    
    if(isset($_SESSION['id'])){
        $id=$_SESSION['id'];
        $name=$id['id'];

        //수정 필요 99를 넣으면 99,999선택 가능
        $sql="SELECT*FROM team WHERE member='%$name%'";
        $team=mysqli_query($conn,$sql);
        $len=mysqli_num_rows($team);
        
        if($len==0){
            echo "<script>alert(\"not matched team\");history.back(-1);</script>";

        }else{

            ?>
            <!-- action - team table 전달 .. -->
            <form method='get' action = './_teamtable.php'>
                <select name='team'>
                <?php
                    while($row=mysqli_fetch_array($teams)){
                        $row_id=$row['id'];
                        ?>
                        <option value=<?php echo $row;?>><?php echo"$row_id,$team";?></option>
                        <?php
                    }
                    ?>
                    </select>
                    <input type='submit' value = 'select'>
                </form>
                <?php
        }

    }
    else{
        echo "<script>alert(\"please log in\");history.back(-1);</script>";
    }



?>

</body>
</html>