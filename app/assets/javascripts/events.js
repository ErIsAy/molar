// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  if (!document.querySelector('body.home.chart')) {
    return;
  }

  let selector = document.querySelectorAll(".selector");


  for (var i = 0; i < selector.length; i++) {
    selector[i].addEventListener('click', function() {
      // let existingActive = document.querySelector('.active');
      if (this.classList.contains('active')) {
        this.classList.remove('active');
        this.style.fill = 'white';

      } else {
        this.classList.add('active');
        this.style.fill = 'gray';

      }
      console.log(this)
    })
  }



  class ActionButton {
    constructor(id, color) {

      document.getElementById(id).addEventListener('click', function() {
        let actives = document.querySelectorAll('.active')
        for (var i = 0; i < actives.length; i++) {
          actives[i].style.fill = color
          console.log(actives);
          actives[i].classList.remove('active')
          console.log(this);

        }
      })
    };

  }
  new ActionButton('1', 'red')
  new ActionButton('2', 'blue')
  new ActionButton('3', 'green')




  document.querySelector('#button').addEventListener('click', function() {
    let actives = document.querySelectorAll('.active')
    for (var i = 0; i < actives.length; i++) {
      actives[i].style.fill = 'red'
    }
    console.log('lol');
  })

  oldstuff

  for (var i = 0; i < allmol.length; i++) {
    allmol[i].addEventListener('click', function(e) {
      let existingActive = document.querySelector('.active');
      if (existingActive) {
        existingActive.classList.remove('active')
      } else {
        this.classList.add('active');
      }
      this.style.fill = 'gray';
      this.classList.add('active');
      console.log('lol');

    });
  }

  // document.querySelector('#button').addEventListener('click', function() {
  //   document.querySelector('.active').style.fill = 'red';
  //   console.log('lol');
  // })



})