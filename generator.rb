#!/usr/bin/ruby
#
require './prime'

module Generator

  # generate first n prime numbers

  def self.primes(n)
    if n < 0 || n > 1000 || !n.integer? then
      raise "Please use an integer between 0 and 1000"
    end
    result = []
    candidate = 1
    primes_found = 0
    while primes_found < n do
      if candidate.prime?
        result << candidate
        primes_found += 1
      end
      candidate += 1
    end
    result
  end
end
