=begin
  Song
  #initialize with #name
    accepts a name for the song (FAILED - 12)
  #name=
    sets the song name (FAILED - 13)
  #artist=
    sets the artist object to belong to the song (FAILED - 14)
  .new_by_filename
    creates a new instance of a song from the file that's passed (FAILED - 15)
    associates new song instance with the artist from the filename (FAILED - 16)
=end
require 'pry'

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
# filename = ['Michael Jackson - Black or White - pop.mp3'] => ["Michael Jackson", "Black or White", "pop.mp3"]
# creates a new instance of a song from the file that's passed
  def self.new_by_filename(filename)
    # binding.pry
    song_split = filename.split(" - ")
    new_song = self.new(song_split[1])                      # expect(new_instance.name).to eq('Black or White')
    artist = Artist.find_or_create_by_name(song_split[0])   # this is separating the song and artist from each other
    
# assocaitees new song instance with the artist from the filename
    new_song.artist = artist                                #=> <Artist:0x00000000022bc9b8 @name="Michael Jackson", @songs=[]>
    artist.add_song(new_song)                               #=> <Song:0x00000000020d6388 @name="Black or White">
    new_song                                                # Needs to return the song 
    
  end
  
# filename = ['Michael Jackson - Black or White - pop.mp3']
  def new_by_filename(filename)
    binding.pry
    song = self.new(filename)    # create an instance with self.new
    song.name = filename.split(" - ")[1]
    song
  end

end