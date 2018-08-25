import $ from 'jquery';
import '../css/table.css';

//session의 value을 이용하는 것 외에는 저장까지 작동함
var times; // DB로 보내야하는 시간 데이터

function drawTable() {
    const trBlock = '.block';
    const trWeek = '#week';

    let weekday = ["월", "화", "수", "목", "금", "토", "일"];

    for (let i = 0; i < 7; i++) { 
        $(trWeek).append(`<th>${weekday[i]}</th>`);
    }
    var a = 0;

    var xmlhttp = new XMLHttpRequest(); // getting user's times
    xmlhttp.onreadystatechange = function(){
        if (this.readyState == 4 && this.status == 200){
            times = JSON.parse(this.responseText); //JSON.parse(this.responseText);
            console.log(times);
            if(times == ''){
                times = [];
            }else{
                times = times.split(',');
            }
            for (let i = 0; i < 7; i++) { //using user's time, drawing the table
                $(trBlock).append((e) => {
                    if (times.length > a){
                        if (times[a] === i.toString() + e.toString()) {//changed i and e
                            a++;
                            return `<td class = "time" style = "background-color : rgba(0, 0, 0, 255);" data-time="${i.toString() + e.toString()}"></td>`; //black
                        } else {
                            return `<td class = "time" data-time="${i.toString() + e.toString()}"></td>`;
                        }
                    } else {
                        return `<td class = "time" data-time="${i.toString() + e.toString()}"></td>`;
                    }
                });
            }
            attachTableClickEvent();
            attachSaveClickEvent();
            
        }
    }
    xmlhttp.open("GET", "src/php/_gettable.php", true);
    xmlhttp.send();
}

function attachTableClickEvent() {
    $('.time').on('click', (e) => {
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
        console.log(times);
    });
}

function attachSaveClickEvent() {
    $('#save').on('click', () => {
        times = times.sort();
        times = times.join(',');
        $("#send").append(
            "<input type = 'text' name = 'times' value ="+ times + ">" // see if there is a way to send this info without it being having to appear on screen
        );
        console.log(times);
    });
}

$(document).ready(() => {
    drawTable();
});