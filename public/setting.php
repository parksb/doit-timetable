<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>설정</title>
</head>
<body>
  <header>
    <span>DoiT</span>
      <div id = "linklist" align = "right">
        <a href = "index.php" style = "text-decoration: none">로그아웃</a>
      </div>       
  </header>
  <hr>
  <div id = "setting">
    <h3>이름/비밀번호 변경 및 회원 탈퇴</h3>
    <div class = "left" id = "setting2">
      <div>*원치 않을 시 공란*</div><br>
      <div class="padding">변경할 이름</div>
      <div class="padding">이름 확인</div>
      <div class="padding">현재 비밀번호</div>
      <div class="padding">변경할 비밀번호</div>
      <div>비밀번호 확인</div>
    </div>

    <form action = "../src/php/_setting.php" method = "POST" class = "left">
      <br><br>
      <input type="text" id = "wantname" name = "wantname"></input><br>
      <input type="text" id = "checkname" name = "checkname"></input><br>
      <input type="password" id = "currentpassword" name = "currentpassword"></input><br>
      <input type="password" id = "wantpassword" name = "wantpassword"></input><br>
      <input type="password" id = "checkpassword" name = "checkpassword"></input>
      <input type = "submit" value = "변경">
    </form>

  </div>

  <script src = "src/setting.min.js"></script>

</body>
</html>