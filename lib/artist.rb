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
  def find_or_create_by_name(name)
    artist_found = self.all.find {|artist| artist.name == artist}
    if artist_found
      artist_found
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end
end

    
end
