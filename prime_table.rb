#!/usr/bin/ruby
#
require './generator'

size = 10
primes = Generator::primes(size)
# Figure out how wide to make the columns
width_format = " %#{Math::log10(primes.last ** 2).to_i + 1}d"

(0..size-1).each do |ii|
  (0..size-1).each do |jj|
    printf width_format, primes[ii] * primes[jj]
  end
  printf "\n"
end
