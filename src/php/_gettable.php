<?php
require "./_connect.php";


if (!isset($_SESSION["id"])){ //if session id is empty
    /* echo "<script>
    console.log('로그인을 하지 않은 상태입니다.');
    </script>";
    header("Location: http://localhost/timetable/dist.php");
    exit; */ //actual using code
    $_SESSION["id"] = '1';//for test
}
$ID = $_SESSION["id"];

$query = "SELECT times FROM user WHERE id = '$ID'";
if ($result = mysqli_query($conn, $query)){
        $times = mysqli_fetch_row($result);
        echo json_encode($times[0]);
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
