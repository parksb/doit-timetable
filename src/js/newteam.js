import $ from 'jquery';
import '../css/newteam.css';
<<<<<<< HEAD
import $ from 'jquery';
=======
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361

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
<<<<<<< HEAD
                        '<tr class = "member"> <th> <input type="checkbox" id = "' + member[0] +'"> </th> <th>' + member[1] + '</th> <th>' + member[2] + '</th> <th>' + member[3] + '</th> </tr>'
=======
                        '<tr class = "member"> <th> <input type="checkbox" name="chk"/> </th> <th>' + member[1] + '</th> <th>' + member[2] + '</th> <th>' + member[3] + '</th> </tr>'
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361
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
        "<input type = 'text' name = 'teamMembers' value ="+ JSON.stringify(memberlist) + ">" // see if there is a way to send this info without it being having to appear on screen
    )
}

<<<<<<< HEAD
function deleteUser() {
    var table = document.getElementById('memberlist');
    var rowCount = memberlist.length;

    for(var i=0; i<rowCount; i++) {
        var chkbox = document.getElementById(memberlist[i])
        if(chkbox != null && chkbox.checked == true) {
            table.deleteRow(i+1);
            memberlist.splice(i, 1);
=======
function deleteRow(tableID) {
    var table = document.getElementById(tableID);
    var rowCount = table.rows.length;

    for(var i=1; i<rowCount; i++) {
        var row = table.rows[i];
        var chkbox = row.cell[0].childNodes[0]; //how to get the value of the checkbox?
        console.log(chkbox); //currently is shown as undefined
        if(null != chkbox && true == chkbox.checked) {
            table.deleteRow(i);
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361
            rowCount--;
            i--;
        }
    }
}
<<<<<<< HEAD


$('#memSearch').on('click', () => {
    memSearch();
});

$('#memInfo').on('click', () => {
    memInfo();
});

$('#deleteUser').on('click', () => {
    deleteUser();
});
=======
// 벌써 선택된 유저를 지우는 방법 필요

$('#memSearch').on('click', () => {
    memSearch();
  });
  //할 것 : team member의 정보에서 []와 ""을 제외한 숫자와 ,만 저장
>>>>>>> 79e361c8e4020a4dbafaf050e6c65093c4e1d361
