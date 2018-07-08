<?php
require "./_connect.php";

if (!empty($_POST["name"])) {
  $userName = $_POST["name"];
} else {
  echo "<script>
        alert('이름을 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}
if (!empty($_POST["ID"])) {
  if(($_POST["ID"]).strlen >= 8 && ($_POST["ID"]).strlen < 20){
    $query = "SELECT EXISTS (SELECT 1 FROM user WHERE $_POST["ID"]");
    $result = mysqli_query($conn, $query);
    if($result){
      $userID = $_POST["ID"];
    }else{ //ID가 사용중일 때
      echo "<script>
        alert('사용중인 ID입니다.');
        history.back(-1);
        </script>";
      exit;
    }
  }else{ //ID의 길이<8 ID의 길이>=20일 때
    echo "<script>
        alert('ID의 길이는 8이상 20미만이어야 합니다.');
        history.back(-1);
    </script>";
    exit;
  }
} else {//입력을 안 했을 때
  echo "<script>
        alert('ID를 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}
if (!empty($_POST["password"])) {
  if(($_POST["password"]).strlen >= 8 && ($_POST["password"]).strlen < 20){
    $password = $_POST["password"];
  }else{ //비밀번호의 길이<8 비밀번호의 길이>=20일 때
    echo "<script>
        alert('비밀번호의 길이는 8이상 20미만이어야 합니다.');
        history.back(-1);
    </script>";
  exit;
  }
} else { //입력을 안 했을 때
  echo "<script>
        alert('비밀번호를 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}
if (!empty($_POST["email"])) {
  $email = $_POST["email"];
} else {
  echo "<script>
        alert('이메일을 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}

if (isset($userName, $userID, $password, $email)){
  $query = "INSERT INTO user (name, userId, password, email) VALUE ($userName, $userID, $password, $email)"
  mysqli_query($conn, $query);
}
?>