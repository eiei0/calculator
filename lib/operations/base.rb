# frozen_string_literal: true

class Base
  def self.calculate(first_int, second_int)
    new(first_int, second_int).calculate
  end

  def initialize(first_int, second_int)
    @first_int = first_int
    @second_int = second_int
  end

  def calculate
    raise "##{__method__} is not implemented in base class"
  end

  private

  attr_reader :first_int, :second_int
end
