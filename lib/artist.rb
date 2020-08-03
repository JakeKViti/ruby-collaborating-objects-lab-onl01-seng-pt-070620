class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.all
    self.name
  end

  def add_song

  end

  def songs

  end

  def self.find_or_create_by_name

  end

  def print_songs
    print self.name
  end
end
