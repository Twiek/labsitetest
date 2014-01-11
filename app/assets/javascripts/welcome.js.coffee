# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $(".navbar-toggle").click ->
    $(".page-wrap").toggleClass "page-wrap-left"
    $(".navbar-side").toggleClass "navbar-side-extend"
    $(".navbar").toggleClass "navbar-left"

  $(".navigation-link-toggle").click ->
    $(".page-wrap").toggleClass "page-wrap-left"
    $(".navbar-side").toggleClass "navbar-side-extend"
    $(".navbar").toggleClass "navbar-left"


