require 'pry'

class Song
  attr_accessor  :name, :artist

  def initialize(name)
    @name = name
    # @songs = []
  end

  def self.new_by_filename(filename)
    # song=self.new
    song_name = filename.split(" - ")[1]
    artist = filename.split(" - ")[0]
    song = self.new(song_name)
    # song.artist.name = artist_name.name
    song.artist = Artist.find_or_create_by_name(artist)
    song.artist.add_song(song)
    song
  end

  # def artist_name=(name)
  #   self.artist = Artist.find_or_create_by_name(name)
  # end

end
