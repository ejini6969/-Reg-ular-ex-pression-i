# https://www.codewars.com/kata/567de72e8b3621b3c300000b

# Complete the code which should return true if the given object is a single ASCII letter (lower or upper case), false otherwise.

import re

def is_letter(s):
    return bool(re.fullmatch("^[a-z]$", s, flags = re.I))
  
import codewars_test as test
from solution import is_letter

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(is_letter(""), False)
        test.assert_equals(is_letter("a"), True)
        test.assert_equals(is_letter("X"), True)
        test.assert_equals(is_letter("7"), False)
        test.assert_equals(is_letter("_"), False)
        test.assert_equals(is_letter("ab"), False)
        test.assert_equals(is_letter("a\n"), False)
