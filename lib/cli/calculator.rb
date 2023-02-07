# frozen_string_literal: true

require 'thor'

require_relative '../calculator'

module CLI
  class Calculator < Thor
    def self.exit_on_failure?
      false
    end

    desc 'add [LEFT_OPERAND] --to [RIGHT_OPERAND]', 'Adds the two operands together and prints the result'
    method_option :to, required: true, type: :string
    def add(left_operand)
      calculator = ::Calculator.new(left_operand, "+", options[:to])
      puts calculator.calculate
    end

    desc 'subtract [LEFT_OPERAND] --from [RIGHT_OPERAND]', 'Subtracts the left operand from the right operand and prints the result'
    method_option :from, required: true, type: :string
    def subtract(left_operand)
      calculator = ::Calculator.new(left_operand, "-", options[:from])
      puts calculator.calculate
    end

    desc 'multiply [LEFT_OPERAND] --by [RIGHT_OPERAND]', 'Multiplies the left operand by the right operand and prints the result'
    method_option :by, required: true, type: :string
    def multiply(left_operand)
      calculator = ::Calculator.new(left_operand, "*", options[:by])
      puts calculator.calculate
    end

    desc 'divide [LEFT_OPERAND] --by [RIGHT_OPERAND]', 'Divides the left operand by the right operand and prints the result'
    method_option :by, required: true, type: :string
    def divide(left_operand)
      calculator = ::Calculator.new(left_operand, "/", options[:by])
      puts calculator.calculate
    end
  end
end

CLI::Calculator.start(ARGV)
