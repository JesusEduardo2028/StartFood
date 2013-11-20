# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).bind "ajax:success", (e, data, status, xhr) ->
  $('#sign_up').find('input:visible:first').focus().end().find('#sign_up_user').enableClientSideValidations()
  if data.name_taken?
    alert("Error, nombre en uso")
  else
    e.preventDefault()

  if data.path?
    window.location.href = data.path
  else
    e.preventDefault()

  if data.errors?
    $("#sign_up").find('input:visible:first').focus().end().find('#sign_up_user').enableClientSideValidations()
    $('#error-messages').html(data.errors).parent().show()
  else
    e.preventDefault()




