require_relative '../solver'
require 'rspec'

describe Solver do
    let(:solver) {Solver.new}
    it "#factorial" do
      expect(solver.factorial(0)).to eq(1)
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it "Raises an argument error for a negative integer" do
      expect {solver.factorial(-1)}.to raise_error(ArgumentError)
      expect {solver.factorial(-10)}.to raise_error(ArgumentError)
    end

    it "#Reverse string" do
      expect(solver.reverse("trest")).to eq("tsert")
      expect(solver.reverse("doctor")).to eq("rotcod")
      expect(solver.reverse("rest")).to eq("tser")
    end

    it "" do
    end
end
