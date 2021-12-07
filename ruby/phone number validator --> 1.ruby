# https://www.codewars.com/kata/525f47c79f2f25a4db000025

=begin
Only worry about the following format:
(123) 456-7890 (don't forget the space after the close parentheses)
=end

def validPhoneNumber(phoneNumber)
  /\A\(\d{3}\) \d{3}-\d{4}\z/ === phoneNumber
end

Test.assert_equals(validPhoneNumber("(123) 456-7890"), true);
Test.assert_equals(validPhoneNumber("(1111)555 2345"), false);
Test.assert_equals(validPhoneNumber("(098) 123 4567"), false);
Test.assert_equals(validPhoneNumber("(123)456-7890"), false);
Test.assert_equals(validPhoneNumber("abc(123)456-7890"), false);
Test.assert_equals(validPhoneNumber("(123)456-7890abc"), false);
Test.assert_equals(validPhoneNumber("abc(123)456-7890abc"), false);
Test.assert_equals(validPhoneNumber("abc(123) 456-7890"), false);
Test.assert_equals(validPhoneNumber("(123) 456-7890abc"), false);
Test.assert_equals(validPhoneNumber("abc(123) 456-7890abc"), false);
