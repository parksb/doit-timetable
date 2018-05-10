import $ from 'jquery';
import '../css/teamlist.css';

function renderList(list) {
  for (let i = 0; i < list.length; i += 1) {
    $('#team-list').append(`<li><a href="./teamtable.html?i=${list[i].id}">${list[i].name}</a></li>`);
  }
}

(() => {
  // dummy data
  const list = [
    {
      id: '0',
      name: 'team1',
    }, {
      id: '1',
      name: 'team2',
    }, {
      id: '2',
      name: 'team3',
    }, {
      id: '3',
      name: 'team4',
    }, {
      id: '4',
      name: 'team5',
    },
  ];

  renderList(list);
})();
