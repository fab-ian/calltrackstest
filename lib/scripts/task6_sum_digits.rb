# frozen_string_literal: true

require 'pry-byebug'

class SumDigits
  def initialize(number)
    @number = number
  end

  def call
    @number = calculate_sum until single_digit?

    @number
  end

  private

  def single_digit?
    @number.to_s.size == 1
  end

  def calculate_sum
    sum = 0
    @number.to_s.chars.each { |number| sum += number.to_i }
    sum
  end
end

puts SumDigits.new(31_337).call
puts SumDigits.new(6).call
