#!/usr/bin/env ruby

module Luhn
  class CLI
    def self.is_valid?(number)
      odds = evens = 0
      number.to_s.reverse.chars.each_slice(2) do |odd,even|
        odds += odd.to_i

        double = even.to_i * 2
        if double >= 10
          double = double.to_s.chars.map(&:to_i).inject(:+)
        end
        evens += double
      end
      (odds + evens) % 10 == 0
    end
    
    def self.run(number)
      puts "With an input of #{number} the output would be:"
      puts "#{number} is #{self.is_valid?(number) && 'valid' ||'not valid'}"
    end
  end
end
