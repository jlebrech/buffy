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

  it "should process buffer" do
    @dummy.instance_variable_set("@buffer", "hello\nworld")
    @dummy.process_buff
    @dummy.lines.should eql ["hello","world"]
  end

  describe "#line" do
    before do
      @dummy.instance_variable_set("@buffer", "hello\nworld")
      @dummy.process_buff
    end

    it "should show me a line" do
      @dummy.line(2).should eql "2: world"
    end

    it "should change a line" do
      @dummy.line(2, "I am a line")
      @dummy.line(2).should eql "2: I am a line"
    end

    it "should display a range of lines" do
      multiline = @dummy.line(1..2)
      multiline.should eql "1: hello\n2: world"
    end
    it "should replace multiple lines" do
      pending "replace a range of lines with a range of lines from input split by newline character"
    end
  end

  it "should colorise" do
    pending "colorise @buffer and process into individual coloured buffers"
  end

  it "should write back to file" do
    pending "reopen the file for writing, save the @lines to @buffer and write buffer to file"
    pending "saving should take a filename as a parameter"
  end

  it "should number the lines" do
    pending "write the line number to the text representation of a line"
  end


end
