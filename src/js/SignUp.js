import '../css/signup.css';

$(document).ready()
var IDlist = [];
var ID = document.getElementById("ID").value;
var password = document.getElementById("password").value;
if (ID.length < 8){ //ID's length is too short
    document.getElementById("id_if").innerHTML = "최소 8글자";
}
else if(IDlist.includes(ID)){ //ID is used by someone else
    document.getElementById("id_if").innerHTML = "사용중인 ID";
}
if (password.length < 8){ //password's length is too short
    document.getElementById("pswd_if").innerHTML = "최소 8글자"
}