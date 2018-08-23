<?php
require "./_connect.php";


$times = $_POST["times"];

if (!isset($_SESSION["id"])){ //if session id is not set
    echo "<script>
    console.log('현재 로그인이 되지 않은 상태입니다. 테스트용으로 id = 1로 하겠습니다.');
    </script>";
    $_SESSION["id"] = '1'; //if session is not set, 테스트용으로 session id를 1로 함
}
$ID = $_SESSION["id"];

if(isset($times)){
    $query = "UPDATE user SET times = '$times' WHERE id = '$ID'";
    if(mysqli_query($conn, $query)){
    echo "<script>
    alert('시간표가 저장되었습니다.');
    </script>";
    header("Location: http://localhost/timetable/dist/main.php"); //main으로 이동
    exit;
    }else{
    echo "<script>
    alert('오류가 발생했습니다.');
    history.back(-1);
    </script>";
    exit;
    }
}
?>