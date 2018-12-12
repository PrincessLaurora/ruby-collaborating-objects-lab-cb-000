class Song

attr_reader :name, :artist

  def initialize(name)
  @name = name
  end

  def name=(name)
  @name = name
  end

  def artist=(artist)
  @artist = artist
  end

  def self.new_by_filename(file)
    file = file.split(" - ")
    artist = file[0]
    song = file[1]
    song = self.new(song)
    song.artist = artist
    song
end
end
