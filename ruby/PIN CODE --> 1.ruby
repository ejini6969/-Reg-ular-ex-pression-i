# https://www.codewars.com/kata/55f8a9c06c018a0d6e000132

# Validate if a PIN CODE is exactly four or six digits long 

def validate_pin(pin)
  /\A(\d{4}|\d{6})\z/ === pin
end

describe "Solution" do
  it "Fixed tests" do
    Test.assert_equals(validate_pin(""),false)
    Test.assert_equals(validate_pin("1"),false)
    Test.assert_equals(validate_pin("12"),false)
    Test.assert_equals(validate_pin("123"),false)
    Test.assert_equals(validate_pin("-12345"),false)
    Test.assert_equals(validate_pin("1234567"),false)
    Test.assert_equals(validate_pin("-1234"),false)
    Test.assert_equals(validate_pin("a234"),false)
    Test.assert_equals(validate_pin(".234"),false)
    Test.assert_equals(validate_pin("1.234"),false)
    Test.assert_equals(validate_pin("00000000"),false)
    Test.assert_equals(validate_pin("12345"),false)
    Test.assert_equals(validate_pin("1234567890"),false)
    Test.assert_equals(validate_pin("1234\n567890"),false)
    Test.assert_equals(validate_pin("1234\n5678"),false)
    Test.assert_equals(validate_pin("123"),false)
    Test.assert_equals(validate_pin("1234"),true)
    Test.assert_equals(validate_pin("0000"),true)
    Test.assert_equals(validate_pin("1111"),true)
    Test.assert_equals(validate_pin("123456"),true)
    Test.assert_equals(validate_pin("098765"),true)
    Test.assert_equals(validate_pin("000000"),true)
    Test.assert_equals(validate_pin("123456"),true)
    Test.assert_equals(validate_pin("090909"),true)
    Test.assert_equals(validate_pin("1234aa"),false)
  end
end
