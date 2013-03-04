require 'spec_helper'

describe Luhn do
  it "should output that long number is valid if it passes luhn checksum" do
    output = capture_stdout { CLI.run "79927398713" }
    output.should == "With an input of 79927398713 the output would be:\n79927398713 is valid\n"
  end
  
  it "should output that short number is valid if it passes luhn checksum" do
    output = capture_stdout { CLI.run "133" }
    output.should == "With an input of 133 the output would be:\n133 is valid\n"
  end

  it "should output that long number is invalid if it fails luhn checksum" do
    output = capture_stdout { CLI.run "79927398714" }
    output.should == "With an input of 79927398714 the output would be:\n79927398714 is not valid\n"
  end
  
  it "should output that short number is invalid if it fails luhn checksum" do
    output = capture_stdout { CLI.run "123" }
    output.should == "With an input of 123 the output would be:\n123 is not valid\n"
  end
end

