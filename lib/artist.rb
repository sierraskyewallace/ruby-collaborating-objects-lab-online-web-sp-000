class Artist 
  attr_accessor :name, :songs 
  @@all = [] 
  def initialize(name)
    @name = name
    @songs = []
    @@all << self 
  end
  def self.all 
    @@all 
  end
  def add_song(song)
    self.songs << song
  end
  def self.find_or_create_by_name(name)
    if self.find(name)
      name
    else
      self.new(name)
    end
  end
end

  