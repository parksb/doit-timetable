<!DOCTYPE html>
<html>
    <head>
        <title>회원가입</title>
    </head>
    <body>
        <header>
            <span>DoiT</span>
            <div id = "linklist" align = "right">
                <a href = "index.php" style = "text-decoration: none">로그인</a>
            </div>   
        </header>
        <hr>
        <div id = "signup"> <!--질문: 이 div에 h3외에 요소가 포함되지 않음-->
            <h3>회원가입</h3>
            <div class = "left" id = "signupname">
                <span>이름</span><br>
                <span>ID</span><br>
                <span>비밀번호</span><br>
                <span>이메일</span>
            </div>
            <form action = "../src/php/_signup.php" method = "POST" class = "left">
        		<input type="text" id = "name" name = "name"></input><br>
        		<input type="text" id = "ID" name = "ID"></input><br>
           		<input type="password" id = "password" name = "password"></input><br>
                <input type="text" id = "email" name = "email"></input><br>
                <input type = "submit" value = "가입하기">
            </form>
        </div>
        <script src = "src/signup.min.js"></script>
    </body>
</html>