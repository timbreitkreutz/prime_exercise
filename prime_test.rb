#!/usr/bin/ruby
require 'test/unit'
require './prime'

class TestPrime < Test::Unit::TestCase
  def test_prime_pass
    assert 1.prime?
    assert 2.prime?
    assert 5.prime?
    assert 7.prime?
    assert 167.prime?
    assert 523.prime?
  end

  def test_prime_fail
    assert !4.prime?
    assert !10.prime?
    assert !51.prime?
    assert !723.prime?
  end
  
  def test_boundaries
    assert !0.prime?
    assert !-1.prime?
    assert !-13.prime?
  end
end
