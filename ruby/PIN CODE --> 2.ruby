# https://www.codewars.com/kata/56a25ba95df27b7743000016

=begin
Write a function that takes in a numeric code of any length. 
  The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
=end

def validate_code(code)
  /^[1-3]/ === code.to_s     
end

describe "Solution" do
  it "Fixed tests" do
    expect(validate_code(123)).to eq(true)
    expect(validate_code(248)).to eq(true)
    expect(validate_code(8)).to eq(false)
    expect(validate_code(321)).to eq(true)
    expect(validate_code(9453)).to eq(false)
  end
end
