$ ->

  $('#search-btn').on 'click', (e) ->
    $('#search-icon').toggleClass('fa-search fa-times margin-2')
    $('#search-box').toggleClass('show hidden animated fadeInUp')
    false
