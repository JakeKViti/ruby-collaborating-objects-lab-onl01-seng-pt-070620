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
    if !self.find(name) == nil
      self.find(name)
    else
    self.create_by_name(name)
  end

  def self.find(name)
    self.all.find {|name| name.name == name}
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
