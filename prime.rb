#!/usr/bin/ruby
#
# Add a prime number check to Fixnum
# so we can do 3.prime?
#
class Fixnum
  def prime?
    return true if self == 1
    return false if self < 1
    (2..Math.sqrt(self).to_i).each do |n|
      return false if self % n == 0
    end
    true
  end
end

