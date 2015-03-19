class Room
  include DataMapper::Resource

  property :id, Serial
  property :name, String
  property :number_of_seats, Integer

  belongs_to :cinema
  has n, :showings

end