<!DOCTYPE html>
<html>
    <head>
        <title>팀 생성</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            var memberlist = [];
            function memSearch(){
                var memberID = document.getElementById("memberID").value; //입력된 팀원의 아이디
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function(){
                    if (this.readyState == 4 && this.status == 200){
                        var member = JSON.parse(this.responseText);
                        if (member != null){ //존재하지 않는 유저 처리
                            if ($.inArray(member[0], memberlist) == -1){ // 중복입력 방지
                                memberlist.push(member[0]);
                                $("#memberlist").append(
                                    '<tr> <th>' + member[1] + '</th> <th>' + member[2] + '</th> <th>' + member[3] + '</th> </tr>'
                                )
                            }else{
                                alert("벌써 입력된 유저입니다.");
                            }
                        }else{
                            alert("존재하지 않는 유저입니다.");
                        }
                    }
                }
                xmlhttp.open("GET", "src/php/_memsearch.php?memID=" + memberID, true);
                xmlhttp.send();
            }
            function memInfo(){
                $("#send").append(
                    "<input type = 'text' name = 'teamMembers' value ="+ JSON.stringify(memberlist) + ">"
                )
            }
        </script>
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
            <input onclick = "memInfo()" type = "submit" value = "팀 만들기">
        </form>
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
        <script src = "src/newteam.min.js"></script>
    </body>
</html> 