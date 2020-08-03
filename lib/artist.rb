class Artist

  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
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

  def self.find_or_create_by_name(song)
    if !Song.all.include?(song)
    song = Song.new(song)
    add_song(song)
    end
    return song
  end

  def print_songs
    #print self.songs.each {|song| song.name}
  end
end
