// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

$("#star1a").click(function(){
  $(".barone").css("width", "20%");
  $("#star-val").val(1);
})
$("#star2a").click(function(){
  $(".barone").css("width", "40%");
  $("#star-val").val(2);
})
$("#star3a").click(function(){
  $(".barone").css("width", "60%");
  $("#star-val").val(3);
})
$("#star4a").click(function(){
  $(".barone").css("width", "80%");
  $("#star-val").val(4);
})
$("#star5a").click(function(){
  $(".barone").css("width", "100%");
  $("#star-val").val(5);
})

$("#star1b").click(function(){
  $(".bartwo").css("width", "20%");
  $("#star-val2").val(1);
})
$("#star2b").click(function(){
  $(".bartwo").css("width", "40%");
  $("#star-val2").val(2);
})
$("#star3b").click(function(){
  $(".bartwo").css("width", "60%");
  $("#star-val2").val(3);
})
$("#star4b").click(function(){
  $(".bartwo").css("width", "80%");
  $("#star-val2").val(4);
})
$("#star5b").click(function(){
  $(".bartwo").css("width", "100%");
  $("#star-val2").val(5);
})

})
