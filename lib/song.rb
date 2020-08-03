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
    filename = filename.chomp(".mp3").split(" - ")
    artistName = filename[0]
    songName = filename[1]
    song = Song.new(songName)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.songs << @@all
    song
   end


  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
    #binding.pry
  end
end
