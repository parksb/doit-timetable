<?php
if (!empty($_POST["name"])) {
  $userName = $_POST["name"];
} else {
  echo "<script>
        alert('이름을 입력해주세요.');
        history.back(-1);
    </script>";
  exit;
}
?>