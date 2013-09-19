# encoding: utf-8

module Sqrt
  # Returns the square root of a number
  #
  # @param [Numeric] num the number to take the square root of
  def self.[](num)
    Math.sqrt(num)
  end
end

# @see Sqrt[]
def √(num = false)
  num ? Sqrt[num] : Sqrt
end
