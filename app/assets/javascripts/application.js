// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

jQuery(function($) {
  $("#new_classroom")
    .bind("ajax:success", function(event, data, status, xhr) {
      $("#classrooms").html(data);
    })
    .bind("ajax:error", function(evt, xhr, status, error) {
      $("#form").html(xhr.responseText);
      $("#new_classroom")
        .bind("ajax:success", function(event, data, status, xhr) {
          $("#classrooms").html(data);
        })
        .bind("ajax:error", function(evt, xhr, status, error) {
          $("#form").html(xhr.responseText);
        });
    });
});
