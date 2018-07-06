<html>
<style>
  h3 {
    margin: 5% 30% 0px;
  }
  input {
    border: 2px double grey;
  }
  #des {
    border-radius: 10px;
    border: double 5px black;
    padding: 20px 20px 40px 80px;
    width: 35%;
    height: 23%;
    margin: auto;
    margin-top: 2%;
  }
  .the {
    float: left;
    margin: 0 0 0 0;
    height: 80%;
  }
  #des1 {
    width: 70%;
    margin: 0 0 0 -10%;
    height: 80%;
  }
  #des2 {
    margin: 0 0 0 0;
    width: 30%;
    padding-left: 5px;
    height: 80%;
  }
  input {
    width: 100%;
    height: 20%;
  }
  button {
    height: 40%;
    width: 100%;
    cursor: pointer;
    margin: 0 50% 0 0;
  }
  #des3 {
    float: left;
    font-size: 9px;
    line-height: 6px;
    padding-top: 5px;
    text-align: center;
    border-top: 1px double grey;
    height: 20%;
    width: 120%;
    margin: -10px 0 10px -20%;
  }
  .bar {
    width: 1%;
    height: 13px;
  }
  .p {
    cursor: pointer;
  }
  a{
    text-decoration: none;
  }
</style>

<body>
  <h3>web project</h3>
  <div id='des'>
    <p style="margin-top: 0%">Log in</p>

    <div id='des1' class='the'>
      <input id="id" type="text" style="margin-bottom: 1px"
      placeholder="id">

      <input id='passward' type="password"
      placeholder="passward">

    </div>

    <div id='des2' class='the'>
      <button onclick="login()">login</button>
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

  <script>
    var id = document.getElementById('id');
    var pass = document.getElementById('passward');
    function login() {
      if (id.value == '1111') {
        if (pass.value == '1111') {
          location.href=""
        }
        else {
          window.alert('passward wrong');
          pass.value = "";
        }
      } else {
        window.alert('id is wrong!');
        id.value = "";
        pass.value = "";
      }
    }
  </script>

</body>

</html>