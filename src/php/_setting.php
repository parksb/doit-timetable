<?php
require "./_connect.php";

if (!empty($_POST["wantname"]) or !empty($_POST["checkname"])){
    if(empty($_POST["wantname"])){
        echo "<script>
              alert('원하는 이름을 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    } else if(empty($_POST["checkname"])){
        echo "<script>
              alert('이름 확인란에 원하는 이름을 다시 한번 입력해주세요');
              history.back(-1);
            </script>";
        exit;
    }
    $wantName = $_POST["wantname"];
}
if (!empty($_POST["currentpassword"]) or !empty($_POST["wantpassword"] or !empty($_POST["checkpassword"]))) {
    if(empty($_POST["currentpassword"])){
        echo "<script>
              alert('현재 비밀번호를 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if(empty($_POST["wantpassword"])){
        echo "<script>
              alert('변경할 비밀번호를 입력해주세요.');
              history.back(-1);
            </script>";
        exit;
    }
    if(empty($_POST["checkpassword"])){
        echo "<script>
              alert('비밀번호 확인란을 채워주세요.');
              history.back(-1);
            </script>";
        exit;
    }//wantname=변경할 이름, checkname=이름 확인, currentpassword=현재 비밀번호, wantpassword=변경할 비밀번호, checkpassword=비밀번호 확인

    $currentpassword = $_POST["currentpassword"];
    $wantpassword = $_POST["wantpassword"];
    $checkpassword = $_POST["checkpassword"];

    if(isset($wantName, $currentpassword, $wantpassword, $checkpassword)){
        $idquery = "UPDATE user SET name = $wantName WHERE name = 10000000"; // 현재 로그인 되어있는 id가 어디있는지 모르겠어요
        $idresult = mysqli_query($conn, $idquery);
        $pw="password";
        $pwquery = "UPDATE user SET password = $wantpassword WHERE password = pw"; //현재 로그인 되어있는 pw~~~
        $pwresult = mysqli_query($conn, $pwquery);


        echo "<script>
        alert('회원가입이 완료되었습니다.');
        </script>";
        header("Location: http://localhost/timetable/dist/main.php");
        exit;
    }else{
        echo "Error: " . $query . "<br>" . mysqli_error($conn);
        echo "<script>
        alert('오류가 발생했습니다.');
        </script>";
        exit;
    }
}

?>