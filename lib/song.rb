require "pry"
class Song
  attr_accessor :name, :artist, :title

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    artistName = filename.split(" - ")[0]
    songName = filename.split(" - ")[1]
    song = Song.new(songName)
    song.artist_name = artistName
    binding.pry
    song
   end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
    #binding.pry
  end
end
