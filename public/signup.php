<!DOCTYPE html>
<html>
    <head>
        <title>회원가입</title>
    </head>
    <body>
        <header>
            <h1>DoiT</h1>
        </header>
        <div id = "signup"> <!--질문: 이 div에 h3외에 요소가 포함되지 않음-->
            <h3>회원가입</h3>
            <div class = "left" id = "signupname">
                <span>이름</span><br>
                <span>ID</span><br>
                <span>비밀번호</span><br>
                <span>이메일</span>
            </div>
            <form action = "../src/php/_signup.php" method = "POST" class = "left">
        		<input type="text" id = "name" name = "name" /><br>
        		<input type="text" id = "ID" name = "ID" /><br>
           		<input type="password" id = "password" name = "password" /><br>
                <input type="text" id = "email" name = "email" /><br>
                <input type = "submit" value = "가입하기" />
            </form>
        </div>
        <div id = "linklist">
                <a href = "index.php">로그인</a> <!--로그인으로 이동-->
            </div>   
        <script src = "src/signup.min.js"></script>
    </body>
</html>