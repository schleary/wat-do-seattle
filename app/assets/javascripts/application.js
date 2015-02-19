// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$( document ).ready(function() {
  $('.slider-snap').noUiSlider({
    start: [ 1, 3 ],
    snap: true,
    connect: true,
    range: {
      'min': 0,
      '20%': 1,
      '40%': 2,
      '60%': 3,
      '80%': 4,
      'max': 5
    }
  });

  $('.slider-snap').Link('lower').to(function(minSliderValue) {
    var values = ['Inactive (ex: Watching a Movie)',
                  'Some Mental Activity (ex: Reading a Book)',
                  'Mentally Active (ex: Playing Chess)',
                  'Moderate (ex: Light Yoga)',
                  'Vigorous (ex: Running)',
                  'Extreme (ex: Mountain Climbing)',
                  'Dont Care (Surprise Me!)'];

    $("#min_activity_level").attr("value", parseInt(minSliderValue));
     $('.slider-snap-value-lower').html(values[parseInt(minSliderValue)]);
  });

  $('.slider-snap').Link('upper').to(function(maxSliderValue) {
    var values = ['Inactive (ex: Watching a Movie)',
                  'Some Mental Activity (ex: Reading a Book)',
                  'Mentally Active (ex: Playing Chess)',
                  'Moderate (ex: Light Yoga)',
                  'Vigorous (ex: Running)',
                  'Extreme (ex: Mountain Climbing)',
                  'Dont Care (Surprise Me!)'];

    $("#max_activity_level").attr("value", parseInt(maxSliderValue));
     $('.slider-snap-value-upper').html(values[parseInt(maxSliderValue)]);
  });

});
