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
     #song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
    self.create_by_name(name)
  end
  end

  def self.find(name)
    Artist.all.find {|name| name.name == name}
  end

  def self.create_by_name(name)
    name = Artist.new(name)
    name.save
    name
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
