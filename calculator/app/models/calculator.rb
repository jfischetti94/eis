class Calculator

  attr_accessor :counter
  def initialize
    @counter = 0
  end

  def sum(n,m)
    increment_counter
    return n+m
  end

  def subtraction(n,m)
    increment_counter
    return n-m
  end

  def average(n,m)
    increment_counter
    return (n+m)/2
  end

  def reset_counter
    @counter = 0
  end

  def increment_counter
    @counter += 1
  end

end