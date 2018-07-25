<?php
require "./_connect.php";


$memId = $_REQUEST["memID"];
$query = "SELECT id, name, userId, email FROM user WHERE userId = '$memId'";
$result = mysqli_query($conn, $query);
$member = mysqli_fetch_row($result);
if ($result = mysqli_query($conn, $query)){
        $member = mysqli_fetch_row($result);
        echo json_encode($member);
        exit;
}else{
    echo "
    <script>
        console.log('오류가 생겼습니다.');
    </script>
    ";
    exit;
}



?>