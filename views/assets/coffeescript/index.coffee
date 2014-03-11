$ ->
  $('.info').click ->
    $(this).tooltip()
    setTimeout (->
      $(this).tooltip('close')
    ), 1500
  $('.info').tooltip({
    events: {
      def: "click,mouseleave"
    },
    tooltipClass: 'bar-tooltip',
    show: 0,
    hide: {
      effect: 'fadeOut',
      delay: 1500,
    }
    position: {
      my: "center top+15",
      at: "center center"
    },
    content: ->
      return $(this).prop('title')
  })