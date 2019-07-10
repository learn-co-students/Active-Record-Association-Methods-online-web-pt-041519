class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  # Return genre of this song
  def get_genre_name
    self.genre.name
  end

  # Assign Drake to be this song's artist
  def drake_made_this
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end