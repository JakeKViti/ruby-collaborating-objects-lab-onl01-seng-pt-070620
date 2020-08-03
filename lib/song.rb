class Song
  attr_accessor :name, :artist, :title


  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
     newSong = filename.chomp(".mp3").split(" - ")
     song = self.new(newSong[1])
     song.artist_name = filename.split(" - ")[0]
     song
   end


  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end
