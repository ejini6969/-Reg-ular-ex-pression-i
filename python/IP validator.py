# https://www.codewars.com/kata/515decfd9dcfc23bb6000006

# IPs should be considered valid if they consist of four octets, with values between 0 and 255, inclusive.

import re

def is_valid_IP(strng):
    return bool(re.fullmatch("\A((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.){4}\Z", strng + "."))

import codewars_test as test
from solution import is_valid_IP

@test.describe("Fixed tests")
def _():
    @test.it("Tests")
    def __():
        test.assert_equals(is_valid_IP('12.255.56.1'),     True)
        test.assert_equals(is_valid_IP(''),                False)
        test.assert_equals(is_valid_IP('abc.def.ghi.jkl'), False)
        test.assert_equals(is_valid_IP('123.456.789.0'),   False)
        test.assert_equals(is_valid_IP('12.34.56'),        False)
        test.assert_equals(is_valid_IP('12.34.56 .1'),     False)
        test.assert_equals(is_valid_IP('12.34.56.-1'),     False)
        test.assert_equals(is_valid_IP('123.045.067.089'), False)
        test.assert_equals(is_valid_IP('127.1.1.0'),        True)
        test.assert_equals(is_valid_IP('0.0.0.0'),          True)
        test.assert_equals(is_valid_IP('0.34.82.53'),       True)
        test.assert_equals(is_valid_IP('192.168.1.300'),   False)      
