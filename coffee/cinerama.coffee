$ ->
  console.log('Wat')
  console.log('requesting movies')
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
  runtime.text(movie.runtime)
  runtime.toggleClass('hidden')


  append("<span>Runtime: #{movie.runtime}</span>")
  console.log("Whoooooh #{movie.runtime}!")

renderMovies = (movies) ->
  source = $('#movies-template').html()
  template = Handlebars.compile(source)
  $('#movies').append(template(movies))

renderCinemas = (cinemas) ->
  console.log("Found cinemas")
  console.log(cinemas)
