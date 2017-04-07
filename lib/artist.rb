class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs<<song
    song.artist = self
  end

def self.find_or_create_by_name(name)
    if self.all.find { |artist| artist.name == name }
      self.all.find { |artist| artist.name == name }
    else
      self.new(name)
    end
end

def print_songs
   @songs.each do |song|
     puts song.name
   end
end

   def songs
     @songs
   end



  #
  # MP3 Importer parses all filenames in the db/mp3s folder and sends filenames to Song class
  #
  # Song class is responsible for creating songs given each filename
  # and sending the artist's name (a string) to the artist class
  #
  # Artist class is responsible for either:
  #     1. creating the artist or
  #     2. finding the instance of that artist

end
