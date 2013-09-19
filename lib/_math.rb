# encoding: utf-8

# TODO: Is this the proper way to set the encoding to utf-8 in programs that
# load _math, such as irb?
# Encoding.default_internal = Encoding.find('UTF-8')

Dir["#{__dir__}/_math/**/*.rb"].each do |file|
  require file
end
