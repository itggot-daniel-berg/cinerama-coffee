class Showing
  include DataMapper::Resource

  property :id, Serial
  property :start_time, DateTime

  belongs_to :movie
  belongs_to :cinema
  belongs_to :room
  has n, :bookings

end