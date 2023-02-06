# frozen_string_literal: true

require_relative './base'

class Add < Base
  private

  def post_initialize
    @operator = '+'
  end
end
