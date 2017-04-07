# require 'db/mp3s'

require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    files = Dir.entries(@path)
    return files[2..-1]
  end

  def import
    files.each do |file|
      song = Song.new_by_filename(file)
    end
  end


    #def import(list_of_filenames)
    #  list_of_filenames.each{ |f|
    #    }
    #end




end
