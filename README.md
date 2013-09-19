# _math
A sandbox for math related experiments of mine in Ruby.
My favorite part of Ruby is the simplicity and human feeling to writing in it.
When writing code related to math or science we end up writing complex code that
in practice we use symbols to represent.

Since Ruby has great UTF-8 support, I've decided to start
creating methods to handle some of these use cases.

## ∞ (Infinity)
```ruby
∞ == Float::INFINITY # => true
```

## π (Pi)
```ruby
# Math::PI defaults to 15 decimals of precision
π == Math::PI # => true
π(12) == Math::PI # => false
```

## ∑ (capital sigma)
```ruby
# Parenthesis and hard brackets are both available
∑(1, 2, 3) # => 6.0
∑[4.0, 5.0, 6.0] # => 15.0
```

### Standard summation vs. summation with an index of summation
You're probably asking why not just use `.inject(:+)`? Well, the answer's in the form of a question:
"How do I create a summation that's iterated over?"

![](http://upload.wikimedia.org/math/5/c/0/5c0ac9b6f171fe789dad82e829050e62.png)

### Summation with iteration in Ruby
#### Human friendly:
Using math you can pass a 3 argument version of the sigma method where you give
the lower summation limit, upper summation limit, and a lambda/proc that takes
one argument and returns the result as a numeric class.

```ruby
# Clearer for Ruby beginners
∑(1, 5, Proc.new { |i| i ** 2 }) # => 55.0
∑(1, 5, lambda { |i| i ** 2 }) # => 55.0

# Arguably cleaner
∑(1, 5, ->(i) { i ** 2 }) # => 55.0
```

#### Long:
```ruby
range = 1..5

addends = range.map do |k|
  k.to_f ** 2
end

addends.inject(:+) 
# => 55.0
```

#### Short:
```ruby
(1..5).map { |k| k.to_f ** 2 }.inject(:+) # => 55.0
```

## √ (sqrt)
```ruby
# Use "√(num)" to get the square roots of numbers
√(4) # => 2.0
√[144] # => 12.0
```
