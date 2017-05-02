$(document).on('turbolinks:load',function(){

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
