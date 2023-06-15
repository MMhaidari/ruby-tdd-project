require_relative '../solver'
require 'rspec'

describe Solver do
  let(:solver) { Solver.new }
  it '#factorial' do
    expect(solver.factorial(0)).to eq(1)
    expect(solver.factorial(5)).to eq(120)
    expect(solver.factorial(10)).to eq(3_628_800)
  end

  it 'Raises an argument error for a negative integer' do
    expect { solver.factorial(-1) }.to raise_error(ArgumentError)
    expect { solver.factorial(-10) }.to raise_error(ArgumentError)
  end

  it '#Reverse string' do
    expect(solver.reverse('trest')).to eq('tsert')
    expect(solver.reverse('doctor')).to eq('rotcod')
    expect(solver.reverse('rest')).to eq('tser')
  end

  it '#Fizzbuzz' do
    expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
    expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    expect(solver.fizzbuzz(45)).to eq('fizzbuzz')
  end

  it '#fizz' do
    expect(solver.fizzbuzz(3)).to eq('fizz')
    expect(solver.fizzbuzz(9)).to eq('fizz')
    expect(solver.fizzbuzz(12)).to eq('fizz')
  end

  it '#buzz' do
    expect(solver.fizzbuzz(5)).to eq('buzz')
    expect(solver.fizzbuzz(10)).to eq('buzz')
    expect(solver.fizzbuzz(20)).to eq('buzz')
  end

  it 'Return string for other cases' do
    expect(solver.fizzbuzz(7)).to eq('7')
    expect(solver.fizzbuzz(1)).to eq('1')
    expect(solver.fizzbuzz(11)).to eq('11')
  end
end
