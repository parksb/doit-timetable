<?php
require "./_connect.php";

$teamName = $_REQUEST["teamName"];
$teamMembers = $_REQUEST["teamMembers"];

if (isset($teamName, $teamMembers)){
    $query = "INSERT INTO team (name, members) VALUES ('$teamName', '$teamMembers')";
    if(mysqli_query($conn, $query)){
      echo "<script>
      alert('팀 생성이 완성되었습니다.');
      </script>";
      header("Location: http://localhost/timetable/dist/main.php");
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