# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#This is to enable link to element by table row click
#tr have to have element :"data-link" pointing to URL from app and should have
# :id => "datalink" for changing mouse pointer by css
$ ->
   $("tr[data-link]").click ->
       window.location.replace($(this).data("link"));
        

