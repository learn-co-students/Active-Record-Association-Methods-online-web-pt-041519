require 'pry'

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
    names = []
    #binding.pry
    self.artists.map do |artist|
      names << artist.name
    end
    names
    # return an array of strings containing every musician's name
  end
end
