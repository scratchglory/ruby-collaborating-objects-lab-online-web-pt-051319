=begin
  MP3Importer
  #initialize
    accepts a file path to parse mp3 files from (FAILED - 5)
  #files
    loads all the mp3 files in the path directory (FAILED - 6)
    normalizes the filename to just the mp3 filename with no path (FAILED - 7)
  #import
    imports the files into the library by creating songs from a filename (FAILED - 8)
=end
require 'pry'

class MP3Importer
  attr_accessor :path
  
  def initialize(filepath)  #accepts a file path
    @path = filepath
  end
  
  
# Dir are directory streams representing directories of the underlying file system; listing directories and content
  def files
    @files = Dir.entries(@path)   # .entries returns an array of all of the files in the given directory
    # binding.pry
    @files.delete_if {|file| file == "." || file == ".."} 
    # binding.pry
  # Deletes every element of self for which block evaluates to true
  # needed the "." and ".." because of the output had them both and needed to be deleteed

  end
  
=begin
    files == [
    "Real Estate - Green Aisles - country.mp3",
    "Real Estate - It's Real - hip-hop.mp3",
    "Action Bronson - Larry Csonka - indie.mp3",
    "Thundercat - For Love I Come - dance.mp3"
    ]
=end
  
  def import
    files.each {|filename| Song.new_by_filename(filename)}
  end
  
    
end