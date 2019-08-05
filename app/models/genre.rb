class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    # array = []
    # self.artists do |item|
    #   item = self.artists.name
    #   item << array
    # end
    # array
    # return an array of strings containing every musician's name
    self.artists.map {|a| a[:name]}
    # self.artists[0].name

  end
end
