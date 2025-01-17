class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.length
  end

  def artist_count
    # return the number of artists associated with the genre
    artists = self.songs.map {|song| song.artist}
    artists.length
  end

  def all_artist_names
    # return an array of strings containing every musician's name
    artists = self.songs.map {|song| song.artist}
    artists.map {|artist| artist.name}    
  end
end
