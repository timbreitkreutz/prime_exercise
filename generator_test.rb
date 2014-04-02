#!/usr/bin/ruby
require 'test/unit'
require './generator'

class TestGenerator < Test::Unit::TestCase
  def test_generator_normal
    assert_equal 10, Generator::primes(10).count
  end

  def test_generator_boundaries
    assert_equal 1, Generator::primes(1).count
  end

  def test_generator_different
    results = Generator::primes(15)
    assert_equal results, results.uniq
  end

  def test_generator_wierd_input
    assert_raise RuntimeError do
      Generator::primes(-1)
    end
    assert_raise RuntimeError do
      Generator::primes(9392359325)
    end
    assert_raise RuntimeError do
      Generator::primes(2.3)
    end
  end
end
