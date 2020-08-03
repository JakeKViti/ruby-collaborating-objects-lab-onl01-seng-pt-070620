class MP3Importer
    attr_accessor :song, :artist, :path

  def initialize(path)
    @path = path
  end

  def files
    return Dir["#{@path}/*.mp3"].collect {|file| file.split("/").last}
  end

  def import
    self.files.each do {|file|}
      Song.new_by_filename(file)
    end
  end

end
