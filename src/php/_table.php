<?php
require "./_connect.php";

$times = $_POST["times"];
$id = '1'; // '1'을 $_SESSION['id']으로 바꿔야함
echo "<script>
    alert('$id');
    </script>";
if(isset($times)){
    $query = "UPDATE user SET times = '$times' WHERE id = '$id'";
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