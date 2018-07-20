<?php
require "./_connect.php";


$memId = $_REQUEST["memID"];
$query = "SELECT id, name, userId, email FROM user WHERE userId = '$memId'";
$result = mysqli_query($conn, $query);
$member = mysqli_fetch_row($result);
if ($result = mysqli_query($conn, $query)){
    $member = mysqli_fetch_row($result);
    $user = new class{};
    if (sizeof($member) != 0){

        $user->id = $member[0];
        $user->name = $member[1];
        $user->userId = $member[2];
        $user->email = $member[3];
        $userJSON = json_encode($user);
        echo $userJSON;
        exit;
    }else{
        echo "
        <script>
            alert('존재하지 않는 유저입니다.');
        </script>
        ";
        exit;

    }
}



?>