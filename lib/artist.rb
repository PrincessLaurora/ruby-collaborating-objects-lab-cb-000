class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
  @name = name
  @songs = []
  end

  def name=(name)
  @name = name
  end

  def add_song(song)
  @songs << song
  song.artist = self
  end

  def songs
    @songs
  end

  def self.all
  @@all
  end

  def save
  @@all << self
  end

  def self.create_by_name(name)
  artist =  self.new(name)
  artist.name = name
  artist.save
  artist
  end

  def self.find_or_create_by_name(name)
  self.all.find {|artist| artist.name == name} || self.create_by_name(name)
  end

  def print_songs
  songs.each do |song|
  puts song.name
  end
  end

end
