class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    #self.all
  end

  def add_song(song)
     @@all << self
     song.artist = self
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name

  end

  def print_songs
    print self.name
  end
end
