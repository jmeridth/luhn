require 'rubygems' 
require 'stringio'
require_relative '../lib/luhn'
include Luhn

def capture_stdout(&block)
  original_stdout = $stdout
  $stdout = fake = StringIO.new
  begin
    yield
  ensure
    $stdout = original_stdout
  end
  fake.string
end
