# frozen_string_literal: true

require_relative './base'

class Divide < Base
  def calculate
    super
  rescue ZeroDivisionError
    'NaN'
  end

  private

  def post_initialize
    @operator = '/'
  end
end
