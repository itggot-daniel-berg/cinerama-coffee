$ ->
  console.log('Wat')
  console.log('requesting movies')
  getMovies()
  #console.log('requesting cinemas')
  #getCinemas()

getMovies = ->
  $.ajax
    url: '/movies.json',
    dataType: 'json',
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("Error #{textStatus}, #{errorThrown}")
    success: renderMovies

getMovie = (id) ->
  $.ajax
    url: "/movie.json/#{id}",
    dataType: 'json',
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("Error #{textStatus}, #{errorThrown}")
    success: renderMovie

renderMovie = (movie) ->
  console.log("Whoooooh!")

getCinemas = ->
  $.ajax
    url: '/cinemas.json',
    dataType: 'json',
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("Error #{textStatus}, #{errorThrown}")
    success: renderCinemas

renderMovies = (movies) ->
  movieList = "<ul>"
  for movie in movies
    movieList += "<li>"
    movieList += "<a href='/movie.json/#{movie.id}'>#{movie.name}</a>"
    movieList += "</li>"
  movieList += ("</ul>")
  $('#movies').append(movieList)


renderCinemas = (cinemas) ->
  console.log("Found cinemas")
  console.log(cinemas)
