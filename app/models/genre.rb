class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    # return the number of songs in a genre
    self.songs.count
  end

  def artist_count
    # return the number of artists associated with the genre
    self.artists.count
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artist_names = []
    arry = Artist.all
    for index in 0 ... arry.size
      artist_names << arry[index].name
    end
    artist_names
  end

end
