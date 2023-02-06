# frozen_string_literal: true

require 'spec_helper'

require_relative '../../lib/operations/subtract'

RSpec.describe Subtract do
  describe '#calculate' do
    let(:klass) { described_class.new(first_int, second_int) }

    context 'when the left operand is positive' do
      let(:first_int) { 10 }

      context 'and the right is positive' do
        let(:second_int) { 5 }

        it { expect(klass.calculate).to eq(5) }
      end

      context 'and the right is negative' do
        let(:second_int) { -5 }

        it { expect(klass.calculate).to eq(15) }
      end

      context 'and the right is zero' do
        let(:second_int) { 0 }

        it { expect(klass.calculate).to eq(10) }
      end
    end

    context 'when the left operand is zero' do
      let(:first_int) { 0 }

      context 'and the right is positive' do
        let(:second_int) { 5 }

        it { expect(klass.calculate).to eq(-5) }
      end

      context 'and the right is negative' do
        let(:second_int) { -5 }

        it { expect(klass.calculate).to eq(5) }
      end

      context 'and the right is zero' do
        let(:second_int) { 0 }

        it { expect(klass.calculate).to eq(0) }
      end
    end

    context 'when the right operand is positive' do
      let(:second_int) { 10 }

      context 'and the left is positive' do
        let(:first_int) { 5 }

        it { expect(klass.calculate).to eq(-5) }
      end

      context 'and the left is negative' do
        let(:first_int) { -5 }

        it { expect(klass.calculate).to eq(-15) }
      end

      context 'and the left is zero' do
        let(:first_int) { 0 }

        it { expect(klass.calculate).to eq(-10) }
      end
    end

    context 'when the right operand is zero' do
      let(:second_int) { 0 }

      context 'and the left is positive' do
        let(:first_int) { 5 }

        it { expect(klass.calculate).to eq(5) }
      end

      context 'and the left is negative' do
        let(:first_int) { -5 }

        it { expect(klass.calculate).to eq(-5) }
      end

      context 'and the left is zero' do
        let(:first_int) { 0 }

        it { expect(klass.calculate).to eq(0) }
      end
    end
  end
end
