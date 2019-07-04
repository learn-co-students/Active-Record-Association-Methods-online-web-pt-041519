class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
    # binding.pry
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
    # binding.pry
  end

  def all_artist_names
    self.artists.map {|artist| artist.name}
  end
end
