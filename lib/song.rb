class Song 
  attr_accessor :name
  @@all = [] 
  def initialize(name)
    @name = name
    @@all << self
  end 
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist_name = Artist.new(name)
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
