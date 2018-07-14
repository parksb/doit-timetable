<!DOCTYPE html>
<html>
    <head>
        <title>팀 생성</title>
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
        <form method = "POST" action = "../src/php/_signup.php">
            Team Name: <input type = "text" name = "teamName">
            <div>
                <h3>팀원 목록</h3>
                <table id = "memberlist"> <!--memberlist는 json stringify로 db에 저장-->
                    <tr>
                        <th>이름</th>
                        <th>아이디</th>
                        <th>이메일</th>
                    </tr>
                </table>
            </div>
        </form>
    </body>
</html>