class Song 
  attr_accessor :artist 
  @@all = [] 
  def initialize(artist)
    @name = name
    @file = file
    @@all << self
  end 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end
  def self.all 
    @@all 
  end
  def self.new_by_filename(file)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
end
end
