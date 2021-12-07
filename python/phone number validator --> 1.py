# https://www.codewars.com/kata/525f47c79f2f25a4db000025

"""
Only worry about the following format:
(123) 456-7890 (don't forget the space after the close parentheses)
"""

import re

def validPhoneNumber(phoneNumber):
    return bool(re.match("\A\(\d{3}\) \d{3}-\d{4}\Z", phoneNumber))
  
import codewars_test as test
import random
  
@test.describe("Phone number validations")
def _():
    @test.it("Sample Tests")
    def sample_tests():
        test.assert_equals(valid_phone_number("(123) 456-7890"), True)
        test.assert_equals(valid_phone_number("(1111)555 2345"), False)
        test.assert_equals(valid_phone_number("(098) 123 4567"), False)
        test.assert_equals(valid_phone_number("(123)456-7890"), False)
        test.assert_equals(valid_phone_number("abc(123)456-7890"), False)
        test.assert_equals(valid_phone_number("(333) 185-0594"), True)
        test.assert_equals(valid_phone_number("(123)456-7890abc"), False)
        test.assert_equals(valid_phone_number("abc(123)456-7890abc"), False)
        test.assert_equals(valid_phone_number("abc(123) 456-7890"), False)
        test.assert_equals(valid_phone_number("(123) 456-7890abc"), False)
        test.assert_equals(valid_phone_number("abc(123) 456-7890abc"), False)
