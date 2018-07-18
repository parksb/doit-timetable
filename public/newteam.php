<!DOCTYPE html>
<html>
    <head>
        <title>팀 생성</title>
        <style>
            #linklist{
                float : right;
                width : 70%;
            }
        </style><!--temporary-->
        <script>
            function memSearch(){
                var memberID = document.getElementById("memberID").value;
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function(){
                    if (this.readyState == 4 && this.status == 200){
                        document.getElementById("memberlist").innerHTML = this.responseText;
                    }
                }
                xmlhttp.open("GET", "src/php/_memsearch.php?memID=" + memberID, true); //_memsearch.php가 실행되지 않음
                xmlhttp.send();
            }
        </script><!--temporary-->
    </body>
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
        팀 이름: <input type = "text" name = "teamName"><br><br>
        <div>
            팀원 아이디를 입력하세요: <input type = "text" id = "memberID">
            <button onclick = "memSearch()">입력하기</button>
            <h3>팀원 목록</h3>
            <table id = "memberlist"> <!--memberlist는 json stringify로 db에 저장-->
                <tr>
                    <th>이름</th>
                    <th>아이디</th>
                    <th>이메일</th>
                </tr>
            </table>
        </div>
    </body>
</html>