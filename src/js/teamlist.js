import $ from 'jquery';
import '../css/teamlist.css';

function renderList(list) {
  for (let i = 0; i < list.length; i += 1) {
    $('#team-list').append(`<a href="./teamtable.php?i=${list[i].id}"><li>${list[i].name}</li></a>`);
  }
}

$.ajax({ // AJAX 통신을 이용
  type: 'POST',
  url: '../src/php/_teamlist.php', // teamlist.php에 접근
  dataType: 'JSON', // JSON 형식으로 수신
  success: (result) => { // 성공적으로 수신한 경우
    renderList(result);
  },
});
