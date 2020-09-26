class Song 
  attr_accessor :artist, :name 
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self 
  end 
  def self.all 
    @@all
  end
  def self.new_by_filename(file)
    song = self.new
    song.name = file.split(" - ")
    song
  end
  def artist_name=(name)
    self.artist = artist
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
end