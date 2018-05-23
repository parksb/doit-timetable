import $ from 'jquery';
import '../css/index.css';

$('#el').on('click', () => {
    $(this).html('clicked');
});

for(var i = 0; i < 7; i++){
    $('#blank').append('<td></td>');
}

for(var i = 9; i < 20; i++){
    $('#block').append(`
    <tr id = "blank">
    <td align="center">${i}:00 ~ ${i+1}:00</td>
    </tr>`);
}

var weekday = ["월", "화", "수", "목", "금", "토", "일"];

for(var i = 0; i < 7; i++){
    $('week').append(`<th>${weekday[i]}</th>`);
}