<?php
require "./_connect.php";

session_start();

if(isset($_SESSION['id'])){
    $id=$_SESSION['id'];
    $pw=$_SESSION['pw'];
}

else{
    echo "<script>
          alert('비정상적인 경로로 접근하셨습니다.');
          </script>";
          header("Location: http://localhost/timetable/dist/index.php");
    exit;
}

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
    }

    $currentpassword = $_POST["currentpassword"];
    $wantpassword = $_POST["wantpassword"];
    $checkpassword = $_POST["checkpassword"];

    $currpwquery = "SELECT password FROM user WHERE id = $id";
    $currpwresult = mysqli_query($conn, $currpwquery);

    if($currentpassword != $pw){
        echo "<script>
              alert('현재 비밀번호가 정확하지 않습니다.');
              history.back(-1);
            </script>";
            exit;
    }
    if(isset($wantName, $currentpassword, $wantpassword, $checkpassword)){
        $idquery = "UPDATE user SET name = $wantName WHERE id = $id";
        $idresult = mysqli_query($conn, $idquery);

        $password=md5($wantpassword);
        $pwquery = "UPDATE user SET password = $password WHERE id = $id";
        $pwresult = mysqli_query($conn, $pwquery);


        echo "<script>
        alert('설정이 완료되었습니다. 다시 로그인해주세요.');
        </script>";
        session_destory();
        header("Location: http://localhost/timetable/dist/index.php");
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