require 'binary_gap'
require 'pry'

describe BinaryGap do
  let(:given_number) { BinaryGap.new }

  it "returns zero when given number equals 0" do
    expect(given_number.binary_gap(0)).to eq(0)
  end

  it "returns zero for negative numbers" do
    expect(given_number.binary_gap(-10)).to eq(0)
  end

  it "returns the binary gap of 2 for integer 9" do
    expect(given_number.binary_gap(9)).to eq(2)
  end

  it "returns the binary gap of 2 for integer 9" do
    expect(given_number.binary_gap(20)).to eq(1)
  end
end
