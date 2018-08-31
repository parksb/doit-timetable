<?php
require "./_connect.php";

session_start();

if (isset($_SESSION['id']) && isset($_SESSION['pw'])) {
    $id = $_SESSION['id'];
    $pw = $_SESSION['pw'];
} else {
    echo "<script type = 'text/javascript'>
            alert(\"비정상적인 경로로 접근하셨습니다.\");
            window.location.replace(\"http://localhost/timetable/dist/index.php\");
        </script>";
}

if (!empty($_POST["wantname"]) or !empty($_POST["checkname"])) {
    if (empty($_POST["wantname"])) {
        echo "<script>
              alert('원하는 이름을 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    } else if (empty($_POST["checkname"])) {
        echo "<script>
              alert('이름 확인란에 원하는 이름을 다시 한번 입력해주세요');
              history.back(-1);
            </script>";
        exit;
    }
    if (empty($_POST["currentpassword"])) {
        echo "<script>
              alert('현재 비밀번호를 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if ($_POST["wantname"] !== $_POST["checkname"]) {
        echo "<script>
              alert('변경할 이름과 이름 확인란 입력이 다릅니다.');
              history.back(-1);
            </script>";
        exit;
    }
    $wantName = $_POST["wantname"];
    $currentpassword = md5($_POST["currentpassword"]);
    $idset = true;
}

if (!empty($_POST["wantpassword"] or !empty($_POST["checkpassword"]))) {
    if (empty($_POST["currentpassword"])) {
        echo "<script>
              alert('현재 비밀번호를 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if (empty($_POST["wantpassword"])) {
        echo "<script>
              alert('변경할 비밀번호를 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if (empty($_POST["checkpassword"])) {
        echo "<script>
              alert('비밀번호 확인란을 채워주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if ($_POST["wantpassword"] !== $_POST["checkpassword"]) {
        echo "<script>
              alert('변경할 비밀번호와 비밀번호 확인란 입력이 다릅니다.');
              history.back(-1);
            </script>";
        exit;
    }
    if(!(strlen($_POST["wantpassword"]) >= 8 && strlen($_POST["wantpassword"]) < 20)){
        echo "<script>
              alert('비밀번호의 길이는 8이상 20미만이어야 합니다.');
              history.back(-1);
            </script>";
        exit;
    }
    if (!$idset)
        $currentpassword = md5($_POST["currentpassword"]);
    $wantpassword = md5($_POST["wantpassword"]);
    $checkpassword = md5($_POST["checkpassword"]);
}

if ($currentpassword !== $pw) {
    echo "<script>
              alert('현재 비밀번호가 정확하지 않습니다.');
              history.back(-1);
            </script>";
    exit;
}

if (isset($wantName, $currentpassword, $wantpassword, $checkpassword)) {
    $idquery = "UPDATE user SET name = '$wantName' WHERE userId = '$id'";
    $idresult = mysqli_query($conn, $idquery);

    $pwquery = "UPDATE user SET password = '$wantpassword' WHERE userId = '$id'";
    $pwresult = mysqli_query($conn, $pwquery);

    echo "<script type = 'text/javascript'>
            alert(\"비밀번호 변경이 완료되었습니다. 다시 로그인해주세요.\");
            window.location.replace(\"http://localhost/timetable/dist/src/php/_logout.php\");
        </script>";

} else if (isset($wantName, $currentpassword)) {
    $idquery = "UPDATE user SET name = '$wantName' WHERE userId = '$id'";
    $idresult = mysqli_query($conn, $idquery);

    echo "<script type = 'text/javascript'>
            alert(\"이름 변경이 완료되었습니다. 다시 로그인해주세요.\");
            window.location.replace(\"http://localhost/timetable/dist/src/php/_logout.php\");
        </script>";

} else if (isset($currentpassword, $wantpassword, $checkpassword)) {
    $pwquery = "UPDATE user SET password = '$wantpassword' WHERE userId = '$id'";
    $pwresult = mysqli_query($conn, $pwquery);

    echo "<script type = 'text/javascript'>
            alert(\"이름 및 비밀번호 변경이 완료되었습니다. 다시 로그인해주세요.\");
            window.location.replace(\"http://localhost/timetable/dist/src/php/_logout.php\");
        </script>";
    
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($conn);
    echo "<script>
        alert('오류가 발생했습니다.');
        </script>";
    exit;
}
?>