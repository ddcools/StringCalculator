# spec/lib/string_calculator_spec.rb
require 'rails_helper'
require 'string_calculator'

RSpec.describe Calculators::StringCalculator do
  describe ".add" do
    context "when given an empty string" do
      it "returns 0" do
        expect(Calculators::StringCalculator.add("")).to eq(0)
      end
    end
    
    context "when given a single number" do
      it "returns the number" do
        expect(Calculators::StringCalculator.add("5")).to eq(5)
      end
    end
    
    context "when given multiple numbers separated by commas or newlines" do
      it "returns the sum of the numbers" do
        expect(Calculators::StringCalculator.add("1,2,3\n4")).to eq(10)
      end
    end
    
    context "when given a custom delimiter" do
      it "returns the sum of the numbers" do
        expect(Calculators::StringCalculator.add("//;\n1;2;3")).to eq(6)
      end
    end
    
    context "when given negative numbers" do
      it "raises an exception with the negative numbers listed" do
        expect { Calculators::StringCalculator.add("1,-2,-3") }.to raise_error(StandardError, /Negative numbers not allowed: -2, -3/)
      end
    end
  end
end
