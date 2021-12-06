# https://www.codewars.com/kata/567ed73340895395c100002e

# Implement a function which should return true if given object is a number representable by 8 bit signed integer (-128 to -1 or 0 to 127), false otherwise.

import re

def signed_eight_bit_number(number):
    return bool(re.fullmatch("-?([1-9]|[1-9]\d|1([01]\d|2[0-7]))|-128|0", number))
  
import codewars_test as test
from solution import signed_eight_bit_number

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(signed_eight_bit_number(""), False)
        test.assert_equals(signed_eight_bit_number("0"), True)
        test.assert_equals(signed_eight_bit_number("00"), False)
        test.assert_equals(signed_eight_bit_number("-0"), False)
        test.assert_equals(signed_eight_bit_number("55"), True)
        test.assert_equals(signed_eight_bit_number("-23"), True)
        test.assert_equals(signed_eight_bit_number("042"), False)
        test.assert_equals(signed_eight_bit_number("127"), True)
        test.assert_equals(signed_eight_bit_number("128"), False)
        test.assert_equals(signed_eight_bit_number("999"), False)
        test.assert_equals(signed_eight_bit_number("-128"), True)
        test.assert_equals(signed_eight_bit_number("-129"), False)
        test.assert_equals(signed_eight_bit_number("-999"), False)
        test.assert_equals(signed_eight_bit_number("1\n"), False)
        test.assert_equals(signed_eight_bit_number("1 "), False)
        test.assert_equals(signed_eight_bit_number(" 1"), False)
        test.assert_equals(signed_eight_bit_number("1\n2"), False)
        test.assert_equals(signed_eight_bit_number("+1"), False)
        test.assert_equals(signed_eight_bit_number("--1"), False)
        test.assert_equals(signed_eight_bit_number("1\n"), False)
        test.assert_equals(signed_eight_bit_number("1 "), False)
        test.assert_equals(signed_eight_bit_number(" 1"), False)
        test.assert_equals(signed_eight_bit_number("1\n2"), False)
        test.assert_equals(signed_eight_bit_number("+1"), False)
        test.assert_equals(signed_eight_bit_number("--1"), False)
