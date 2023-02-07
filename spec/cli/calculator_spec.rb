# frozen_string_literal: true

require 'spec_helper'

require_relative '../../lib/cli/calculator'

RSpec.describe CLI::Calculator do
  subject(:cli) { described_class.new }

  describe "#add" do
    context "when the cli has all the arguments it needs" do
      it "returns the sum of the left and right operands" do
        expect { cli.invoke(:add, ["10"], {to: "5"}) }
          .to output(a_string_including("15")).to_stdout
      end
    end

    context "when the cli doesn't have all the arguments it needs" do
      it "fails because of the required left operand argument is missing" do
        expect { cli.invoke(:add, [], {to: "5"}) }
          .to raise_error(Thor::InvocationError, a_string_including("no arguments"))
      end

      it "fails because of the required right operand '--to' argument is missing" do
        expect { cli.invoke(:add, ["10"], {}) }
          .to raise_error(Thor::RequiredArgumentMissingError, a_string_including("--to"))
      end
    end
  end

  describe "#subtract" do
    context "when the cli has all the arguments it needs" do
      it "returns the difference of the left and right operands" do
        expect { cli.invoke(:subtract, ["10"], {from: "5"}) }
          .to output(a_string_including("5")).to_stdout
      end
    end

    context "when the cli doesn't have all the arguments it needs" do
      it "fails because of the required left operand argument is missing" do
        expect { cli.invoke(:subtract, [], {from: "5"}) }
          .to raise_error(Thor::InvocationError, a_string_including("no arguments"))
      end

      it "fails because of the required right operand '--from' argument is missing" do
        expect { cli.invoke(:subtract, [10], {}) }
          .to raise_error(Thor::RequiredArgumentMissingError, a_string_including("--from"))
      end
    end
  end

  describe "#multiply" do
    context "when the cli has all the arguments it needs" do
      it "returns the product of the left and right operands" do
        expect { cli.invoke(:multiply, ["10"], {by: "5"}) }
          .to output(a_string_including("50")).to_stdout
      end
    end

    context "when the cli doesn't have all the arguments it needs" do
      it "fails because of the required left operand argument is missing" do
        expect { cli.invoke(:multiply, [], {by: "5"}) }
          .to raise_error(Thor::InvocationError, a_string_including("no arguments"))
      end

      it "fails because of the required right operand '--by' argument is missing" do
        expect { cli.invoke(:multiply, ["10"], {}) }
          .to raise_error(Thor::RequiredArgumentMissingError, a_string_including("--by"))
      end
    end
  end

  describe "#divide" do
    context "when the cli has all the arguments it needs" do
      it "returns the quotient of the left and right operands" do
        expect { cli.invoke(:divide, ["10"], {by: "5"}) }
          .to output(a_string_including("2")).to_stdout
      end
    end

    context "when the cli doesn't have all the arguments it needs" do
      it "fails because of the required left operand argument is missing" do
        expect { cli.invoke(:multiply, [], {by: "5"}) }
          .to raise_error(Thor::InvocationError, a_string_including("no arguments"))
      end

      it "fails because of the required right operand '--by' argument is missing" do
        expect { cli.invoke(:multiply, ["10"], {}) }
          .to raise_error(Thor::RequiredArgumentMissingError, a_string_including("--by"))
      end
    end
  end
end
