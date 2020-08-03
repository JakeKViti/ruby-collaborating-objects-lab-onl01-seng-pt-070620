class Song
  attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    songName = filename.split(" - ")[1]
    song = Song.new(songName)
    song.artist_name = artist_name
    song
   end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
