class Song 
  attr_accessor :name
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self
  end 
  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
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
