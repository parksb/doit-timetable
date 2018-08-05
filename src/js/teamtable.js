import $ from 'jquery';
import '../css/index.css';

const times = ['12', '96']; // from database
let idx = 0;

for (var i = 0; i < 7; i++) {
    $('.block').append((e) => {
        if (times[idx] === e.toString() + i.toString()) {
            idx += 1;
            return `<td>tt</td>`;
        } else {
            return `<td></td>`;
        }
    })
}

var weekday = ["월", "화", "수", "목", "금", "토", "일"];

for (var i = 0; i < 7; i++) {
    $('#week').append(`<th>${weekday[i]}</th>`);
}