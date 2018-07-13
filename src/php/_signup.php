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
  if(strlen($_POST["ID"]) >= 8 && strlen($_POST["ID"]) < 20){
    $temp = $_POST["ID"];
    $query = "SELECT id FROM user WHERE userId = '$temp'";
    $result = mysqli_query($conn, $query);
    if(mysqli_num_rows($result) == 0){
      $userID = $_POST["ID"];
    }else{ //ID가 사용중일 때
      echo "<script>
        alert('사용중인 ID입니다.');
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
  if((strlen($_POST["password"]) >= 8 && strlen($_POST["password"]) < 20)){
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);
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
  $query = "INSERT INTO user (name, userId, password, email) VALUES ('$userName', '$userID', '$password', '$email')";
  if(mysqli_query($conn, $query)){
    $query = "SELECT id FROM user WHERE userId = '$userID'";
    $result = mysqli_query($conn, $query);
    session_start();
    $_SESSION['id'] = mysqli_fetch_row($result)[0];
    echo $_SESSION['id'];
    echo "<script>
    alert('회원가입이 완료되었습니다.');
    </script>";
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