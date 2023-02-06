# frozen_string_literal: true

require_relative './base'

class Divide < Base
  def calculate
    first_int / second_int
  rescue ZeroDivisionError
    'NaN'
  end
end
