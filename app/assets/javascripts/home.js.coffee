# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/


$("#btn-register").click ->
    $('#sign_up_user').enableClientSideValidations()
    $("#sign_up").find('input:visible:first').focus().end().find('#sign_up_user').enableClientSideValidations()


