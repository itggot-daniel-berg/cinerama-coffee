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

getCinemas = ->
  $.ajax
    url: '/cinemas.json',
    dataType: 'json',
    error: (jqXHR, textStatus, errorThrown) ->
      console.log("Error #{textStatus}, #{errorThrown}")
    success: renderCinemas

renderMovies = (movies) ->
  $('body').append("<h1>Wheeeeeeeeee</h1>")
  #console.log("Found movies!")
  #console.log(movies)

renderCinemas = (cinemas) ->
  console.log("Found cinemas")
  console.log(cinemas)
