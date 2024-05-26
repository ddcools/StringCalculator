# app/lib/string_calculator.rb

module Calculators
  class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?
  
      delimiter = ","
      if numbers.start_with?("//")
        parts = numbers.split("\n", 2)
        delimiter = parts[0][2..-1]
        numbers = parts[1]
      end
  
      numbers.gsub!("\n", delimiter)
      number_list = numbers.split(delimiter)
  
      sum = 0
      negatives = []
      number_list.each do |num|
        n = num.to_i
        if n < 0
          negatives << n
        else
          sum += n
        end
      end
  
      raise StandardError, "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
  
      sum
    end
  end
end
