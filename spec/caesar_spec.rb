#spec/caesar_spec.rb
require './caesar'

describe "#caesar" do
  it "caesar ciphers a left shift case without wrap" do
    expect(caesar('ABC', 1)).to eql('BCD')
  end

  it "caesar ciphers a left shift case with wrap" do
    expect(caesar('XYZ', 1)).to eql('YZA')
  end

  it "caesar ciphers a right shift case without wrap" do
    expect(caesar('BCD', -1)).to eql('ABC')
  end

  it "caesar ciphers a right shift case with wrap" do
    expect(caesar('ABC', -1)).to eql('ZAB')
  end

  it "caesar ciphers a mixed upper/lower case sentence with whitespace and punctuation" do
    expect(caesar('Hello, World!', 3)).to eql('Khoor, Zruog!')
  end

  it "caesar ciphers a string containing numerals" do
    expect(caesar(10)).to eql('87')
  end
end