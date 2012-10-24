require 'buffy/version'

module Buffy
  class FileBuffer
    attr_accessor :filename, :lines

    def initialize(filename)
      @filename = filename
      @lines = []
      @buffer = ""
      read_file
    end

    def read_file
      if File.exists? @filename
       	puts "File Exists"
        File.open(@filename, 'rb') do |f|
          @buffer = f.read
          process_buff
        end
        return true
      else
        @lines = ""
        @buffer = ""
        return false
      end
    end

    def process_buff
      @lines = @buffer.split("\n")
    end
  end
end
