ready = undefined;
ready = ->

  backToTop()
  toggleAbcNavigation()
  return

$(document).ready ready
$(document).on 'page:load', ready

toggleAbcNavigation = ->
  $("#trigger").click (event) ->
    if $("#filters").css("display") != "none"
      $("#trigger i").removeClass "fa-chevron-up"
      $("#trigger i").addClass "fa-chevron-down"
      $("#filters").slideToggle "fast"
    else if $("#filters").css("display") == "none"
      $("#trigger i").removeClass "fa-chevron-down"
      $("#trigger i").addClass "fa-chevron-up"
      $("#filters").slideToggle "fast"
    return
  return

backToTop = ->
  $("#back-to-top").hide()
  $ ->
    $(window).scroll ->
      if $(this).scrollTop() > 100
        $("#back-to-top").fadeIn()
      else
        $("#back-to-top").fadeOut()
      return
    $("#back-to-top").click ->
      $("body, html").animate { scrollTop: 0 }, 500
      false
    return
  return

