# https://www.codewars.com/kata/56a25ba95df27b7743000016

"""Write a function that takes in a numeric code of any length. 
  The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
"""

import re

def validate_code(code):
    return bool(re.match("[1-3]", str(code)))
  
import codewars_test as test
from solution import validate_code

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(validate_code(123), True)
        test.assert_equals(validate_code(248), True)
        test.assert_equals(validate_code(8), False)
        test.assert_equals(validate_code(321), True)
        test.assert_equals(validate_code(9453), False)
