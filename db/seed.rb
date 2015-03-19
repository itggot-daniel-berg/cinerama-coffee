class Seeder

  def self.seed!
    self.movies
    self.cinemas
    self.rooms
    self.showings
  end

  def self.movies
    Movie.create(name: 'The Duplo Movie', runtime: 123 )
    Movie.create(name: 'Intrastellar', runtime: 321)
    Movie.create(name: 'Fight Association', runtime: 96)
    Movie.create(name: 'Trans-formers', runtime: 112)
  end

  def self.cinemas
    Cinema.create(name: 'Filmbyn Sergel')
    Cinema.create(name: 'Hägerstaden')
    Cinema.create(name: 'Bioslottet')
  end

  def self.rooms
    Room.create(name: 'Sal 1', cinema_id: 1, number_of_seats: 240)
    Room.create(name: 'Sal 1', cinema_id: 2, number_of_seats: 240)
    Room.create(name: 'Sal 1', cinema_id: 3, number_of_seats: 240)
    Room.create(name: 'Sal 2', cinema_id: 1, number_of_seats: 120)
    Room.create(name: 'Sal 2', cinema_id: 2, number_of_seats: 120)
    Room.create(name: 'Sal 2', cinema_id: 3, number_of_seats: 120)
    Room.create(name: 'Sal 3', cinema_id: 1, number_of_seats: 90)
    Room.create(name: 'Sal 3', cinema_id: 2, number_of_seats: 90)
    Room.create(name: 'Sal 3', cinema_id: 3, number_of_seats: 90)
    Room.create(name: 'Sal 4', cinema_id: 1, number_of_seats: 60)
    Room.create(name: 'Sal 4', cinema_id: 2, number_of_seats: 60)
    Room.create(name: 'Sal 4', cinema_id: 3, number_of_seats: 60)
  end

  def self.showings
    cinema = Cinema.get(1)
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M')  )
    cinema = Cinema.get(2)
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M')  )
    cinema = Cinema.get(3)
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 1, cinema: cinema, room: cinema.rooms.first(name: 'Sal 1'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 2, cinema: cinema, room: cinema.rooms.first(name: 'Sal 2'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M') )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-13 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-14 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-15 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-16 21:15', '%Y-%m-%d %H:%M')  )
    Showing.create(movie_id: 3, cinema: cinema, room: cinema.rooms.first(name: 'Sal 3'), start_time: DateTime.strptime('2015-03-17 21:15', '%Y-%m-%d %H:%M')  )
  end

end