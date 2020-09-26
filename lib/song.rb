class Song 
  attr_accessor :name, :artist 
  @@all = [] 
  def initialize(name)
    @name = name
  end
  def save 
    @@all << self 
  end
  def self.all 
    @@all 
  end
  def self.new_by_filename(file)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
end
end