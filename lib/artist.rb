require "pry"
class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
     @songs << song
     song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    #binding.pry
   self.all.find  {|name| name.name == name}
    
    end
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
