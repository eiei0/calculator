# frozen_string_literal: true

class Calculator
  def initialize(first_int, operation, second_int)
    @first_int = first_int
    @operation = operation
    @second_int = second_int
  end

  def calculate
  end

  private

  attr_reader :first_int, :operation, :second_int
end
