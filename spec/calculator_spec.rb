# frozen_string_literal: true

require 'spec_helper'

require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new(first_int, operation, second_int) }
  let(:first_int) { 10 }
  let(:second_int) { 5 }

  context 'when operation is invalid' do
    let(:operation) { '$' }

    it 'raises an error' do
      expect { calculator.calculate }.to raise_error
    end
  end
end
