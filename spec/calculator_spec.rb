# frozen_string_literal: true

require 'spec_helper'

require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calculator) { Calculator.new(first_int, operation, second_int) }
  let(:first_int) { 10 }
  let(:second_int) { 5 }
  let(:operation) { '+' }

  describe '#calculate' do
    described_class::OPS.each do |op, klass|
      context "when the operation is #{op}" do
        let(:operation) { op }
        let(:operation_class) { class_double(klass.to_s) }

        before do
          allow(operation_class).to receive(:calculate)
          allow(calculator).to receive(:operation_class).and_return(operation_class)
        end

        it 'calculates the operands using the expected class' do
          calculator.calculate

          expect(operation_class).to have_received(:calculate).with(first_int, second_int)
        end
      end
    end

    context 'when operation is invalid' do
      let(:operation) { '%' }

      it 'raises an error' do
        expect { calculator.calculate }.to raise_error("'#{operation}' is an invalid operation")
      end
    end

    context 'when either of the operands are invalid' do
      let(:addition_class) { class_double('Add') }

      before do
        allow(addition_class).to receive(:calculate)
        allow(calculator).to receive(:operation_class).and_return(addition_class)
      end

      context 'and they are strings or integers' do
        let(:first_int) { 'hi mom' }

        it 'attempts to convert them into integers' do
          calculator.calculate

          expect(addition_class).to have_received(:calculate).with(0, second_int)
        end
      end

      context 'and they are not strings or integers' do
        let(:first_int) { Struct.new('HiMom') }
        let(:second_int) { Struct.new('HiDad') }

        it 'converts them into integers' do
          calculator.calculate

          expect(addition_class).to have_received(:calculate).with(0, 0)
        end
      end
    end
  end
end
