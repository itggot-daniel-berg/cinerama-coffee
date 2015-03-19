$ ->
  console.log('Wat')
  console.log('requesting movies')
  #register an event listener that fires
  #every time someone clicks on the target
  $('#movies').on 'click', '.movie-info', ->
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
  banan = $('#movies').find("[data-id='#{movie.id}']")
  banan.parent().append("<span>Runtime: #{movie.runtime}</span>")
  console.log("Whoooooh #{movie.runtime}!")

renderMovies = (movies) ->
  movieList = "<ul>"
  for movie in movies
    movieList += "<li>"
    movieList += "<div class='movie'>"
    movieList += "<a data-id='#{movie.id}' class='movie-info' href='/movie.json/#{movie.id}'>#{movie.name}</a>"
    movieList += "</div>"
    movieList += "</li>"
  movieList += ("</ul>")
  $('#movies').append(movieList)


renderCinemas = (cinemas) ->
  console.log("Found cinemas")
  console.log(cinemas)
