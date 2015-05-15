ready = undefined;
ready = ->

  toggleUserProfileMenu()
  return

$(document).ready ready
$(document).on 'page:load', ready


toggleUserProfileMenu = ->
  $('#profile-menu-trigger').click (event) ->
    if $('#user-profile-nav').css('display') != 'none'
      toggleChevronClasses '#profile-menu-trigger i', 'fa-chevron-down', 'fa-chevron-up'
    else if $('#user-profile-nav').css('display') == 'none'
      toggleChevronClasses '#profile-menu-trigger i', 'fa-chevron-up', 'fa-chevron-down'
    return
  return


toggleChevronClasses = (selector, add_class, remove_class) ->
  $(selector).removeClass remove_class
  $(selector).addClass add_class
  $('#user-profile-nav').slideToggle 'fast'
  return