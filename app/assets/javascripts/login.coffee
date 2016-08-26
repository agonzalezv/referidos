#They made me do it. Sorry :(
$(document).on 'turbolinks:load', ->
  $("#new_user").submit ->
    $("#registration_pwd").val( $("#registration_docid").val() )
    return
  return
