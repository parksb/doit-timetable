<html>

<body>
    choose your team!
    
    <?php
        require "./_connect.php";
        $team=$_GET['team_name'];

        if($team!=NULL){
            //나중에 변경
            $sql="SELECT*FROM team WHERE name = '$team'";
            $teams=mysqli_query($conn,$sql);
            $len=mysqli_num_rows($teams);
            

            if($len==0){
                echo "<script>alert(\"not matched team\");history.back(-1);</script>";
            }else{
                //team 식별자중 name 이외의 것을 row에 넣음;
                //같은 이름의 복수의 팀이 허용가능
                    ?>
                        <!--action 추후 추가 == 자신을 팀에 추가 -->
                    <form method='get' action='./_addteam.php'>
                        <select name='team'>
                            <?php
                             while($row=mysqli_fetch_array($teams)){
                                $row_id=$row["id"];
                            ?>
                                <option value=<?php echo $row_id;?>><?php echo"$row_id,$team";?></option>
                            <?php
                             }
                            ?>
                        </select>
                        <input type='submit' value = '선택'>
                    </form>
                    <?php
                

            }


        }else{
            echo "<script>alert(\"not matched team\");history.back(-1);</script>";
        }
    ?>

</body>


</html>