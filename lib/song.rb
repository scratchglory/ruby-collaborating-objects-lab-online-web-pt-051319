require 'pry'

# class Song 
#   attr_accessor :name, :artist
  
#   def initialize(name)
#     @name = name
#   end
  
# # filename = ['Michael Jackson - Black or White - pop.mp3'] => ["Michael Jackson", "Black or White", "pop.mp3"]
# # creates a new instance of a song from the file that's passed
#   def self.new_by_filename(filename)
#     # binding.pry
#     song_split = filename.split(" - ")
#     new_song = self.new(song_split[1])  # expect(new_instance.name).to eq('Black or White')
#     artist = Artist.find_or_create_by_name(song_split[0]) 
#         # this is separating the song and artist from each other
    
# # assocaitees new song instance with the artist from the filename
#     new_song.artist = artist  #=> <Artist:0x00000000022bc9b8 @name="Michael Jackson", @songs=[]>
#     artist.add_song(new_song) #=> <Song:0x00000000020d6388 @name="Black or White">
#     new_song                  # Needs to return the song 
    
#   end

# end

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  
end