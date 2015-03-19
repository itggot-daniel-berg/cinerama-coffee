$ ->
  #register an event listener that fires
  #every time someone clicks on the target
  $('#movies').on 'click', 'a.movie-info', ->
    getJson($(this).attr('href'), renderMovie)
    event.preventDefault()
  getJson('/movies.json', renderMovies)
  #console.log('requesting cinemas')
  #getJson('/cinemas.json', renderCinemas)

getJson = (url, callbackFunction) ->
  $.ajax
    url: url,
    dataType: 'json',
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("Error #{textStatus}, #{errorThrown}")
    success: callbackFunction

renderMovie = (movie) ->
  link = $('#movies').find("[data-id='#{movie.id}']")
  runtime = link.parent().find('.runtime')
  runtime.text("Runtime: #{movie.runtime}")
  runtime.toggleClass('hidden')

renderMovies = (movies) ->
  source = $('#movies-template').html()
  template = Handlebars.compile(source)
  $('#movies').append(template(movies))

renderCinemas = (cinemas) ->
  console.log("Found cinemas")
  console.log(cinemas)
