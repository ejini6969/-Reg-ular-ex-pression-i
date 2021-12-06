# https://www.codewars.com/kata/567de8823fa5eee02100002a

# Implement a function which should return true if given object consists exclusively of zero or more whitespace characters, false otherwise.

import re

def whitespace(string):
    # return bool(re.fullmatch("\s*", string))
    return bool(re.fullmatch("[\s\t\n\r]*", string))

import codewars_test as test
from solution import whitespace

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(whitespace(""), True)
        test.assert_equals(whitespace(" "), True)
        test.assert_equals(whitespace("\n\r\n\r"), True)
        test.assert_equals(whitespace("a"), False)
        test.assert_equals(whitespace("w\n"), False)
        test.assert_equals(whitespace("\t"), True)
        test.assert_equals(whitespace(" a\n"), False)
        test.assert_equals(whitespace("\t \n\r\n  "), True)
        test.assert_equals(whitespace("\n\r\n\r "), True)
        test.assert_equals(whitespace("\n\r\n\r 3"), False)
