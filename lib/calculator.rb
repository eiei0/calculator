# frozen_string_literal: true

class Calculator
  class InvalidOperation < ArgumentError; end

  OPS = {
    '+' => 'Add',
    '-' => 'Subtract',
    '*' => 'Multiply',
    '/' => 'Divide'
  }.freeze

  def initialize(first_int, operation, second_int)
    @first_int = first_int
    @second_int = second_int
    @operation = operation
  end

  def calculate
    operation_class
  end

  private

  attr_reader :first_int, :second_int, :operation

  def operation_class
    op = OPS[operation]
    return op unless op.nil?

    raise InvalidOperation, "'#{operation}' is an invalid operation"
  end
end
