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
        file = File.open(@filename, 'rb')
        @buffer = file.read
        process_buff
        return true
      else
        @lines = ""
        @buffer = ""
        return false
      end
    end

    def process_buff
      @lines = @buffer.split("\n")
      count_line_zeros
    end

    def line(selection, content = "")
      if content == "" then
        if selection.is_a?(Range)
          output = []
          selection.each do |i|
            line_no = i
            formatted_line_no(line_no)
            output << "#{formatted_line_no(line_no)}#{@lines[line_no-1]}"
          end
          output.join("\n")
        else
          "#{formatted_line_no(selection)}#{@lines[selection-1]}"
        end
      else
        @lines[selection-1] = content
      end
    end

  private
   
    def formatted_line_no(line_no)
      "#{trailing_zeros(line_no, @zeros)}: "
    end

    def count_line_zeros
      @zeros = (@lines.length / 10).to_i
    end

    def trailing_zeros(line_no, zeros)
      "%#{zeros}d" % line_no
    end

  end # end FileBuffer
end # end buffy
