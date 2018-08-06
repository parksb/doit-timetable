import $ from 'jquery';
import '../css/index.css';

let times = []; // DB로 보내야하는 시간 데이터

function drawTable() {
    const trBlock = '.block';
    const trWeek = '#week';

    let weekday = ["월", "화", "수", "목", "금", "토", "일"];

    for (let i = 0; i < 7; i++) {
        $(trWeek).append(`<th>${weekday[i]}</th>`);
    }

    for (let i = 0; i < 7; i++) {
        $(trBlock).append((e) => {
            return `<td data-time="${e.toString() + i.toString()}"></td>`;
        });
    }
}

function attachTableClickEvent() {
    $('td').on('click', (e) => {
        const clickedElement = $(e.currentTarget);
        const time = clickedElement.attr('data-time'); // 클릭한 시간

        if (clickedElement.css('background-color') === 'rgba(0, 0, 0, 0)') {
            times.push(time);
            clickedElement.css('background-color', 'rgba(0, 0, 0, 255)'); // black
        } else {
            let idx  = times.indexOf(time);
            if (times.indexOf(time) >= 0) { // 클릭한 시간이 times에 존재할 경우
                times.splice(idx, 1); // times에서 클릭한 시간을 제거한다.
            }

            clickedElement.css('background-color', 'rgba(0, 0, 0, 0)'); // white
        }
    });
}

function attachSaveClickEvent() {
    $('#save').on('click', () => {
        // TODO: 배열 times를 DB로 보내는 로직.
        console.table(times);
    });
}

$(document).ready(() => {
    drawTable();
    attachTableClickEvent();
    attachSaveClickEvent();
});