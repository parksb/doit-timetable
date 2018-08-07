<?php
require "./_connect.php";

$ID = $_REQUEST["ID"];
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
