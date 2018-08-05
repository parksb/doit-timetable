import $ from 'jquery';
import '../css/newteam.css';


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
                        '<tr class = "member"> <th> <input type="checkbox" id = "' + member[0] +'"> </th> <th>' + member[1] + '</th> <th>' + member[2] + '</th> <th>' + member[3] + '</th> </tr>'
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
    memberlist = memberlist.join(', ');
    $("#send").append(
        "<input type = 'text' name = 'teamMembers' value ="+ memberlist + ">" // see if there is a way to send this info without it being having to appear on screen
    )
}

function deleteUser() {
    var table = document.getElementById('memberlist');
    var rowCount = memberlist.length;

    for(var i=0; i<rowCount; i++) {
        var chkbox = document.getElementById(memberlist[i])
        if(chkbox != null && chkbox.checked == true) {
            table.deleteRow(i+1);
            memberlist.splice(i, 1);
        }
    }
}

$('#memSearch').on('click', () => {
    memSearch();
});

$('#memInfo').on('click', () => {
    memInfo();
});

$('#deleteUser').on('click', () => {
    deleteUser();
});

