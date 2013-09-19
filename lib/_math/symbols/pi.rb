# encoding: utf-8
require 'bigdecimal'
require 'bigdecimal/math'

# Returns π at the given precision, defaults to 15 decimals of precision
#
# @param [Fixnum] precision at which precision to calculate π
# @return [BigDecimal,Float] a big decimal if a precision is specified,
#   otherwise return a {Float}
def π(precision = false)
  precision ? BigMath::PI(precision) : Math::PI
end
