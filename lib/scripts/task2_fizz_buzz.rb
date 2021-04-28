# frozen_string_literal: true

require 'pry-byebug'

class FizzBuzz
  def initialize
    @factor_fizz = 3
    @factor_buzz = 5
    @factor_fizz_buzz = 15
  end

  def call
    (1..100).to_a.each do |number|
      puts assign_factor(number)
    end
  end

  private

  def wanted_number(number, factor)
    (number % factor).zero?
  end

  def assign_factor(number)
    return 'FizzBuzz' if wanted_number(number, @factor_fizz_buzz)

    return 'Fizz' if wanted_number(number, @factor_fizz)

    return 'Buzz' if wanted_number(number, @factor_buzz)

    number
  end
end

FizzBuzz.new.call
