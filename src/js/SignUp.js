import '../css/signup.css';

$(document).ready()
console.log("javascript")
var list = []; // list in server about the id etc
$("#submit").click(function(){
    var ID = document.getElementById("ID").value;
    var Password = document.getElementById("password").value;
    if (ID.length < 8){ //ID's length is too short
        window.alert("아이디는 8자 이상이어야 합니다.");
    }
    else if(list.includes(ID)){ //ID is used by someone else
        window.alert("사용중인 아이디입니다");
    }
    else if (password.length < 8){ //password's length is too short
        window.alert("비밀번호는 8자 이상이어야 합니다");
    }
    else{
        var Name = document.getElementById("name").value;
        var Email = document.getElementById("email").value;
        ID.password = Password;
        ID.name =Name;
        ID.email = Email;
        list.push(ID); // transmit the info to server here
        window.alert("회원가입이 완료되었습니다.");
    }
});
///Current Error: property 'innerHTML' of null but not using innerHTML anymore