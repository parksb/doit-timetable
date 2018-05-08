import '../css/index.css';
import $ from 'jquery';

$('#el').on('click', function() {
  $(this).html('clicked');
});