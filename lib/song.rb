class Song 
  attr_accessor :name, :artist
  @@all = [] 
  def initialize(name)
    @name = name
  end 
  def self.all 
    @@all 
  end
  def artist_name=(name)
    self.artist = artist
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  def self.new_by_filename(file)
    song = self.new
    song.name = filename.split(" - ")[1]
    song
  end
end
