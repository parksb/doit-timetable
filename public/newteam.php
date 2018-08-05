<!DOCTYPE html>
<html>
    <head>
        <title>팀 생성</title>
<<<<<<< HEAD
=======
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<<<<<<< HEAD
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361
=======
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361
    </head>
    <body>
        <header>
            <span>DoiT</span>
            <div id = "linklist" align = "right">
                <a href = "main.php" style = "text-decoration: none">메인</a>
                <a href = "로그아웃" style = "text-decoration: none">로그아웃</a>
            </div>
        </header>
        <hr>
        <form id = "send" action = "../src/php/_newteam.php" method = "POST">
            팀 이름: <input type = "text" name = "teamName"><br><br>
            <input id = "memInfo" type = "submit" value = "팀 만들기">
        </form>
        팀원 아이디를 입력하세요: <input type = "text" id = "memberID">
        <button id = "memSearch">입력하기</button>
        <h3>팀원 목록</h3>
        <table id = "memberlist"> <!--memberlist는 json stringify로 db에 저장-->
            <tr>
                <th></th>
                <th>이름</th>
                <th>아이디</th>
                <th>이메일</th>
            </tr>
        </table>
        <button id = "deleteUser">유저 빼기</button>
        <script src = "src/newteam.min.js"></script>
    </body>
</html> 