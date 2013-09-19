# encoding: utf-8

# require '_math/core_ext/numeric/comparisons'

# TODO: Throw these methods into representative files

[Bignum, Fixnum, Float].each do |klass|
  klass.class_eval do
    alias :÷ :'/'
  end
end
