import $ from 'jquery';
import '../css/index.css';

$('#el').on('click', () => {
    $(this).html('clicked');
});


for(var i = 0; i < 7; i++){
    console.log("fried chicken");
    $('#blank').append('<td></td>');
}
