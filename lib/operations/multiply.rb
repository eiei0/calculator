# frozen_string_literal: true

require_relative './base'

class Multiply < Base
  private

  def post_initialize
    @operator = '*'
  end
end
