#= require jquery
#= require jquery-migrate-min
#= require jquery_ujs
#= require jquery.ui.core
#= require fancybox
#= require turbolinks
#= require bootstrap/dist/js/bootstrap.min.js
#= require camera/scripts/camera.min.js
#= require_tree .

$(document).on 'ready page:load', ->
  $('a.fancybox').fancybox()

$(document).on 'page:change', ->
  $.fancybox.init()