// var initialize_calendar;
// initialize_calendar = function() {
//   $('#calendar').each(function(){
//     var calendar = $(this);
//     calendar.fullCalendar({});
//   })
// };
// $(document).on('load', initialize_calendar);





$(function() {

  // page is now ready, initialize the calendar...

  $('#calendar').fullCalendar({
    // put your options and callbacks here
    dayClick: function() {
      alert('a day has been clicked!');
    }
  })

});