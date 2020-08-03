class Song
  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artistName = filename.split(" - ")[0]
    songName = filename.split(" - ")[1]
    song = Song.new(songName)
    song
   end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
