import $ from 'jquery';
import '../css/index.css';

$('#el').on('click', () => {
  $(this).html('clicked');
});
