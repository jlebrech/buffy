require 'spec_helper'

describe Buffy::FileBuffer do
  it "should have an initializer" do
    pending "make sure it initialises correctly"
  end

  it "should read from the file" do
    pending "stub file open and the output of read"
  end

  it "should process buffer" do
    pending "should process a buffer into a line array"
  end

  it "should pretty print the buffer and rewrite the lines" do
    pending "use pp gem on @buffer and then @lines"
  end

  it "should colorise" do
    pending "colorise @buffer and process into individual coloured buffers"
  end

  it "should write back to file" do
    pending "reopen the file for writing, save the @lines to @buffer and write buffer to file"
    pending "saving should take a filename as a parameter"
  end

  it "should be able to display single lines" do
    pending "display the content of a line"
  end

  it "should be able to display multiple lines" do
    pending "display a range of lines"
  end

  it "should number the lines" do
    pending "write the line number to the text representation of a line"
  end

  it "should replace a line" do
    pending "it should modify a line in @lines"
  end

  it "should replace multiple lines" do
    pending "replace a range of lines with a range of lines from input split by newline character"
  end
end
