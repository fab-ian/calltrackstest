# frozen_string_literal: true

class ReplaceNumberWithString
  def self.call(str)
    str.gsub(/\d+/, 'NUMBER')
  end
end

str = 'abc 123 def 345 6'
puts str
puts ReplaceNumberWithString.call(str)
