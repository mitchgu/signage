# This is where it all goes :)
$ ->
  $(".endpoint > header").click ->
    $(this).next(".endpoint-content").slideToggle()

  $(".resource-spec > h6").click ->
    $(this).next("pre").slideToggle()

  getScrollOffset = ->
    if $("#sidebar").hasClass("extended")
      return 50
    else
      return 25

  sidebarExtended = ->
    $("#sidebar").hasClass "extended"

  showSidebar = ->
    $("#sidebar").addClass "extended"
    $("#shroud").fadeIn()

  hideSidebar = ->
    $("#sidebar").removeClass "extended"
    $("#shroud").fadeOut()

  $("#hamburger").click showSidebar

  $("#sidebar .nav-endpoint a").click (e) ->
    e.preventDefault()
    target = $($(this).attr "href")
    if target.length
      container = $ "#content"
      container.animate {
        scrollTop: target.offset().top \
                   - container.offset().top \
                   + container.scrollTop() \
                   - getScrollOffset()
      }
      target.children(".endpoint-content").slideDown()
    hideSidebar() if sidebarExtended()

  $("#shroud").click hideSidebar

