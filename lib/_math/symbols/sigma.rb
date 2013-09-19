# encoding: utf-8

# A module for use in summation
module Sigma
  # Returns the summartion of the addends
  #
  # @note this method will yield the iterator if a length 3 containing the
  #   lower bound of summation, upper bound of summation, and a Proc that
  #   accepts the iterator is given
  # @param [Numeric] addends a list of numbers to find the sum of
  # @return [Numeric,Sigma] if arguments were supplied a numeric value is
  #   returned, otherwise Sigma is returned
  def self.[](*addends)
    if addends.count.eql?(3) && addends.last.kind_of?(Proc)
      addends = (addends[0]..addends[1]).to_a.map do |i|
        addends.last.call(i.to_f)
      end
    end

    addends.map(&:to_f).reduce(:+)
  end
end

# Returns the result of Sigma.[] or Sigma depending on arguments being supplied
#
# @note this method will yield the iterator if a length 3 containing the
#   lower bound of summation, upper bound of summation, and a Proc that
#   accepts the iterator is given
# @param [Numeric] addends a list of numbers to find the sum of
# @return [Numeric,Sigma] if arguments were supplied a numeric value is
#   returned, otherwise Sigma is returned
def ∑(*addends)
  if addends.any?
    Sigma[*addends]
  else
    Sigma
  end
end
