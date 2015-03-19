class Cinema
  include DataMapper::Resource

  property :id, Serial
  property :name, String

  has n, :rooms
  has n, :showings
  has n, :movies, through: :showings

end