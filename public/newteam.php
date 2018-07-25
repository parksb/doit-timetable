<!DOCTYPE html>
<html>
    <head>
        <title>팀 생성</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
            var memberlist = [];
            memberlist.push("<?php echo $_SESSION['id']; ?>")
            function memSearch(){
                var memberID = document.getElementById("memberID").value;
                var xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange = function(){
                    if (this.readyState == 4 && this.status == 200){
                        if (true){
                            var member = JSON.parse(this.responseText);
                            memberlist.push(member[0]);
                            $("#memberlist").append(
                                '<tr> <th>' + member[1] + '</th> <th>' + member[2] + '</th> <th>' + member[3] + '</th> </tr>'
                            )
                            console.log(memberlist);
                        }else{
                            alert("존재하지 않는 유저입니다.");
                        }
                    }
                }
                xmlhttp.open("GET", "src/php/_memsearch.php?memID=" + memberID, true);
                xmlhttp.send();
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
        <script src = "src/newteam.min.js"></script>
    </body>
</html>