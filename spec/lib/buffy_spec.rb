require 'spec_helper'

describe Buffy::FileBuffer do
  before do
    File.stub(:exists => true, :open => true)
    @dummy = Buffy::FileBuffer.new("loremipsum.txt")
  end

  it "should have an initializer" do
    Buffy::FileBuffer.any_instance.should_receive(:read_file).and_return(true)
    Buffy::FileBuffer.new("filename.txt")
  end

  it "should read from the file" do
    @dummy.should_receive(:process_buff).and_return("")
    @dummy.read_file
  end

  it "should process buffer" do
    @dummy.stub(:buffer => "hello\nworld")
    @dummy.process_buff.should eql ["hello","world"]
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
