#!/usr/bin/ruby
#
require './prime'

module Generator

  # generate first n prime numbers

  def self.primes(n)
    if n < 0 || n > 1000 || !n.integer? then
      raise "Please use an integer between 0 and 1000"
    end
    # Seed this so we can just check odd numbers
    result = [1, 2]
    candidate = 3
    primes_found = 2
    while primes_found < n do
      if candidate.prime?
        result << candidate
        primes_found += 1
      end
      candidate += 2
    end
    result.first(n)
  end
end
