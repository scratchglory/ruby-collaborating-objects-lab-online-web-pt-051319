=begin
  Artist
  #initialize with #name
    accepts a name for the artist (FAILED - 1)
  #name=
    sets the artist name (FAILED - 2)
  #add_song
    keeps track of an artist's songs (FAILED - 3)
  #save
    adds the artist instance to the @@all class variable (FAILED - 4)
  .find_or_create_by_name
    finds or creates an artist by name maintaining uniqueness of objects by name property (FAILED - 5)
    Creates new instance of Artist if none exist (FAILED - 6)
  #print_songs
    lists all of the artist's songs (FAILED - 7)
=end
require 'pry'

class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name

    @@all << self  # needed for expect(Artist.all.size).to eq(1)in song_spec
    @songs = []
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.all # needed for the #save method 
    @@all
  end
    
  def self.find_or_create_by_name(name)
    new_artist = Artist.new(name)
    self.all.detect {|artist| artist.name == name}  || Artist.new(name)
  end
  
  def print_songs
    @songs.each {|song| puts song.name}
  end
    
    # binding.pry
end