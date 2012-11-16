require 'spec_helper'

describe Buffy::FileBuffer do
  let(:context){ stub("context") }

  before do
    File.stub(:exists => true, :open => true)
    Buffy::FileBuffer.any_instance.should_receive(:read_file).and_return(true)
    @dummy = Buffy::FileBuffer.new("filename.txt", context)
  end

  subject do
    @dummy
  end

  it "should process buffer" do
    subject.instance_variable_set("@buffer", "hello\nworld")
    subject.process_buff
    subject.lines.should eql ["hello","world"]
  end

  describe "#line" do
    before do
      subject.instance_variable_set("@buffer", "hello\nworld")
      subject.process_buff
    end

    it "should show me a line" do
      subject.line(2).should eql "2: world"
    end

    it "should change a line" do
      subject.line(2, "I am a line")
      subject.line(2).should eql "2: I am a line"
    end

    it "should display a range of lines" do
      context.should_receive(:puts)
      multiline = subject.line(1..2)
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
    #set @zeros to 3; send line_no 20; output should be " 20: "
  end


end
