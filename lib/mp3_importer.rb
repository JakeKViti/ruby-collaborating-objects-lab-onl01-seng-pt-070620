class MP3Importer
    attr_accessor :song, :artist, :path

  def initialize(path)
    @path = path
  end

  def files
    return Dir["#{@path}/*.mp3"]
  end

  def import

  end

end
