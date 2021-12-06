# https://www.codewars.com/kata/56a3f08aa9a6cc9b75000023

"""Write a simple regex to validate a username. Allowed characters are:
     1. lowercase letters,
     2. numbers,
     3. underscore
   Length should be between 4 and 16 characters (both included).
"""

import re

def validate_usr(username):
    return bool(re.fullmatch("[a-z_\d]{4,16}", username))
  
import codewars_test as test
from solution import validate_usr

@test.describe("Fixed Tests")
def fixed_tests():
    @test.it('Basic Test Cases')
    def basic_test_cases():
        test.assert_equals(validate_usr('asddsa'), True)
        test.assert_equals(validate_usr('a'), False)
        test.assert_equals(validate_usr('Hass'), False)
        test.assert_equals(validate_usr('Hasd_12assssssasasasasasaasasasasas'), False)
        test.assert_equals(validate_usr(''), False)
        test.assert_equals(validate_usr('____'), True)
        test.assert_equals(validate_usr('012'), False)
        test.assert_equals(validate_usr('p1pp1'), True)
        test.assert_equals(validate_usr('asd43 34'), False)
        test.assert_equals(validate_usr('asd43_34'), True)
        
