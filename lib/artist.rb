require 'pry'

# class Artist 
#   attr_accessor :name, :songs
#   @@all = []
  
#   def initialize(name)
#     @name = name

#     @@all << self  # needed for expect(Artist.all.size).to eq(1)in song_spec
#     @songs = []
#   end
  
#   def add_song(song)
#     @songs << song
#   end
  
#   def save
#     @@all << self
#   end
  
#   def self.all # needed for the #save method 
#     @@all
#   end
    
#   def self.find_or_create_by_name(name)
#     new_artist = Artist.new(name)
#     self.all.detect {|artist| artist.name == name}  || Artist.new(name)
#   end
  
#   def print_songs
#     @songs.each {|song| puts song.name}
#   end
    
#     # binding.pry
# end

class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song) # keeping track of artist's songs
    @songs << song
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    new_artist = Artist.new(name)
    self.all.find {|artist| artist.name == name} || new_artist
    
  end
  
end