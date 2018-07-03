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
//= require activestorage
//= require_tree .
//
//
//
// let selector = document.querySelectorAll(".selector");
//
//
// for (var i = 0; i < selector.length; i++) {
//   selector[i].addEventListener('click', function() {
//     // let existingActive = document.querySelector('.active');
//     if (this.classList.contains('active')) {
//       this.classList.remove('active');
//       this.style.fill = 'white';
//
//     } else {
//       this.classList.add('active');
//       this.style.fill = 'gray';
//
//     }
//     console.log(this)
//   })
// }
//
//
//
// class ActionButton {
//   constructor(id, color) {
//
//     document.getElementById(id).addEventListener('click', function() {
//       let actives = document.querySelectorAll('.active')
//       for (var i = 0; i < actives.length; i++) {
//         actives[i].style.fill = color
//         console.log(actives);
//         actives[i].classList.remove('active')
//         console.log(this);
//
//       }
//     })
//   };
//
// }
// new ActionButton('1', 'red')
// new ActionButton('2', 'blue')
// new ActionButton('3', 'green')
//
//


// document.querySelector('#button').addEventListener('click', function() {
//   let actives = document.querySelectorAll('.active')
//   for (var i = 0; i < actives.length; i++) {
//     actives[i].style.fill = 'red'
//   }
//   console.log('lol');
// })

// oldstuff

// for (var i = 0; i < allmol.length; i++) {
//   allmol[i].addEventListener('click', function(e) {
//     let existingActive = document.querySelector('.active');
//     if (existingActive) {
//       existingActive.classList.remove('active')
//     } else {
//       this.classList.add('active');
//     }
//     this.style.fill = 'gray';
//     this.classList.add('active');
//     console.log('lol');
//
//   });
// }

// document.querySelector('#button').addEventListener('click', function() {
//   document.querySelector('.active').style.fill = 'red';
//   console.log('lol');
// })


$(document).ready(function() {
  $('.modal').modal();
});