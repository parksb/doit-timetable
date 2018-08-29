<?php
session_start();
?>
<html>
<style>
  body {
    background: #2ecc71;
    text-align: center;
    color: white;
  }
  h1 {
    margin-top: 5%;
    font-size: 1.5em;
  }
  input {
    border: 2px double white;
    width: 100%;
  }
  #des {
    border-radius: 10px;
    border: double 5px white;
    padding: 20px 40px 20px 40px;
    width: 35%;
    height: 30%;
    margin: auto;
    margin-top: 2%;
  }
  .the {
    float: left;
    margin: 0 0 0 0;
    height: 80%;
  }
  #des1 {
    width: 100%;
    height: 80%;
    margin: auto;
  }
  #des2 {
    margin: 0 0 0 0;
    width: 100%;
    height: 80%;
  }
  input {
    width: 100%;
    height: 20%;
  }
  input[type="submit"] {
    width: 100%;
    cursor: pointer;
    font-weight: bold;
  }
  input[type="submit"]:hover {
    background: #2ecc71;
    color: white;
  }
  #des3 {
    float: left;
    font-size: 0.7em;
    line-height: 6px;
    padding-top: 10px;
    text-align: center;
    border-top: 1px double white;
    height: 20%;
    width: 100%;
    margin: -10px 0 10px 0;
  }
  .bar {
    width: 1%;
    height: 13px;
  }
  p {
    font-size: 1.2em;
    margin-top: 10px;
  }
  a{
    text-decoration: none;
  }
</style>

<body>
  <h1>Timetable</h1>
  <div id='des'>
    <p>Log in</p>

    <div id='des1' class='the'>
      <form method='post' action='./src/php/_index.php'>
        <input id="id" type="text" placeholder="id" name='user_id' />

        <input id='passward' type="password"
        placeholder="passward" name='user_pass' />
      
        <input type='submit' value='로그인' />
      
      </form>
    </div>

    <!-- onclick 추가-->
    <div id='des3'>
      <a class='p' id='fp'>아이디 찾기</a>
      <span class='bar'>|</span>
      <a class='p' id='mp'>비밀번호 찾기</a>
      <span class="bar">|</span>
      <a class='p' id='bp' href="./signup.php">회원 가입</a>
    </div>
  </div>
<?php
  if(isset($_SESSION['login_user'])){
    header('Location: ..../public/main.php');
  }
?>

</body>

</html>