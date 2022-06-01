# write 2 methods:
# (a) takes rational number & returns array of denominators
# (b) does a but then reverse back to the rational number

require 'pry'

def unegyptian(array)
  reversion = []

  array.each do |denom|
    reversion << Rational(1, denom)
  end

  reversion.sum.rationalize
end


def egyptian(fraction)
  result = []
  counter = 2

  if fraction.numerator > fraction.denominator
    result << 1
    fraction -= 1
  end

  until fraction == 0
    if fraction / Rational(1, counter) >= 1
      result << counter
      fraction -= Rational(1, counter)
      counter += 1
    else
      counter += 1
      next
    end
  end
 result
end





# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)