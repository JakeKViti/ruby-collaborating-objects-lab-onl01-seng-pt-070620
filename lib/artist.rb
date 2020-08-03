class Artist

  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    self.name
  end

  def add_song
     @songs << song
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
