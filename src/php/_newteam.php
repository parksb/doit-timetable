<?php
require "./_connect.php";

if(!empty($_POST["teamName"])){ //팀 이름을 안 적은 경우
  $teamName = $_REQUEST["teamName"];
}else{
  echo "<script>
        alert('팀 이름을 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}

if($_POST["teamMembers"] != '[]'){ // 팀 멤버의 수가 0인 경우
  $teamMembers = $_REQUEST["teamMembers"]; 
}else{
  echo "<script>
        alert('팀원 한명 이상을 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}

if (isset($teamName, $teamMembers)){
    $query = "INSERT INTO team (name, members) VALUES ('$teamName', '$teamMembers')";
    if(mysqli_query($conn, $query)){
      echo "<script>
      alert('팀 생성이 완성되었습니다.');
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