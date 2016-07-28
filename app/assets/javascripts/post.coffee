# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

loadGrid = ->
  $masnon = undefined

  runPackery = ->
    SocialList()
    $masnon = $('.grid').isotope(
      layoutMode: 'packery'
      columnWidth: 1
      itemSelector: '.item')
    SocialList()
    $masnon.isotope 'layout'
    $(window).resize ->
      SocialList()
      $masnon.isotope 'layout'
      window.setTimeout (->
        SocialList()
        $masnon.isotope 'layout'
        return
      ), 200
      return
    return

  SocialList = ->
    $('.grid').width 'auto'
    currentWidth = $('.grid').width()
    if currentWidth % 4 != 0
      currentWidth = currentWidth - (currentWidth % 4)
    $('.grid').width currentWidth
    $('.post-container .item').removeClass 'auto'
    $('.post-container .in-hold3').removeAttr 'style'
    return

  windowReady ->
    runPackery()
    return
  $comp = $('.all-posts-grid')
  path = undefined
  $comp.find('a').on 'click', ->
    path = window.location.pathname
    return
  $('body').on 'click', '#close-modal', ->
    window.history.replaceState {}, document.title, path
    return
  $('body').on 'gridLoaded', (data, cb) ->
    $elems = $('.temp-to')
    setTimeout (->
      $('.temp-to').children().each (idx, val) ->
        $(this).detach()
        $(this).addClass 'nohide'
        $masnon.isotope().append($(this)).isotope('appended', $(this)).isotope 'layout'
        return
      return
    ), 500
    return
  waypointPostGrid = new Waypoint(
    element: document.querySelector('.all-posts-grid')
    handler: (direction) ->
      if direction == 'down'
        if typeof $('.all-posts-grid').attr('data-seen') == 'undefined'
          $('.all-posts-grid').attr 'data-seen', 'seen'
        $('.all-posts-grid .intro').addClass 'animated'
        $('.all-posts-grid .intro .title').addClass 'animated'
        i = 0.4
        $('.all-posts-grid .item').each ->
          item = $(this)
          item.addClass 'animated'
          item.css 'animation-delay', i + 's'
          i = i + 0.1
          return
      return
    offset: '50%')
  return

$(document).ready -> loadGrid
