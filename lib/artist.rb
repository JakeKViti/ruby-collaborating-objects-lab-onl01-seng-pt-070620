require "pry"
class Artist

  attr_accessor :name, :songs

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
    self.all.detect {|artist| artist.name == name}
  end

  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end
end
