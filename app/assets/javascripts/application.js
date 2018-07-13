// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require moment/moment
//= require jquery
//= require materialize-css/dist/js/materialize
//= require fullcalendar/dist/fullcalendar
//= require daterangepicker/daterangepicker
//= require rails-ujs
//= require activestorage
//= require_tree .
//
//




$(document).ready(function() {
  $('.modal').modal();
   M.updateTextFields();



});

// date


$(document).ready(function() {
  $('.collapsible').collapsible();
  $('.modal').modal();
  $('.datepicker').datepicker();
  $('.timepicker').timepicker({
    defaultTime: 'now'
  });
});

//Side nav


document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems, options);
});

// Initialize collapsible (uncomment the lines below if you use the dropdown variation)
// var collapsibleElem = document.querySelector('.collapsible');
// var collapsibleInstance = M.Collapsible.init(collapsibleElem, options);

// Or with jQuery

$(document).ready(function() {
  $('.sidenav').sidenav();
});