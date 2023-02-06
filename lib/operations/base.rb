# frozen_string_literal: true

class Base
  def self.calculate(first_int, second_int)
    new(first_int, second_int).calculate
  end

  def initialize(first_int, second_int)
    @first_int = first_int
    @second_int = second_int
    @operator = nil

    post_initialize
  end

  def calculate
    first_int.send(operator.to_sym, second_int)
  end

  private

  attr_reader :first_int, :second_int, :operator

  def post_initialize
  end
end
