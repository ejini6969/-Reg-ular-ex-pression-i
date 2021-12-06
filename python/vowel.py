# https://www.codewars.com/kata/567bed99ee3451292c000025

# Implement the function which should return true if given object is a vowel (meaning a, e, i, o, u, uppercase or lowercase), and false otherwise.

import re

def is_vowel(s): 
    return bool(re.fullmatch("^[aeiou]$", s, flags = re.I))
    
@test.describe('Fixed Tests')
def fixed_tests():

    @test.it('Basic Test Cases')
    def basic_tests():
        test.assert_equals(is_vowel(""), False)
        test.assert_equals(is_vowel("a"), True)
        test.assert_equals(is_vowel("E"), True)
        test.assert_equals(is_vowel("ou"), False)
        test.assert_equals(is_vowel("z"), False)
        test.assert_equals(is_vowel("lol"), False)
