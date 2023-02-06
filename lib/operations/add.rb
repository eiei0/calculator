# frozen_string_literal: true

require_relative './base'

class Add < Base
  def calculate
    first_int + second_int
  end
end
