import $ from 'jquery';
import '../css/index.css';

$('#el').on('click', () => {
    $(this).html('clicked');
});

for (var i = 0; i < 7; i++) {
    $('.block').append(`<td></td>`);
}

var weekday = ["월", "화", "수", "목", "금", "토", "일"];

for (var i = 0; i < 7; i++) {
    $('#week').append(`<th>${weekday[i]}</th>`);
}