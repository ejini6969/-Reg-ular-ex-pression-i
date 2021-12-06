# https://www.codewars.com/kata/56a4a3d4043c316002000042/discuss

""" Write a regex to validate a 24 hours time string. Criteria:
     1. '01:00' (leading zeros)
     2. Ranging from '00:00' to '23:59' 
     3. '24:00' NOT ACCEPTED (SHOULD BE '00:00')
"""

import re

def validate_time(time):
    return bool(re.fullmatch("^(0?\d|1\d|2[0-3]):[0-5]\d$", time))
  
test.describe("Basic tests")
test.assert_equals(validate_time('1:00'), True)
test.assert_equals(validate_time('1:00'), True)
test.assert_equals(validate_time('13:1'), False)
test.assert_equals(validate_time('12:60'), False)
test.assert_equals(validate_time('12: 60'), False)
test.assert_equals(validate_time('24:00'), False)
test.assert_equals(validate_time('00:00'), True)
test.assert_equals(validate_time('24o:00'), False)
test.assert_equals(validate_time('24:000'), False)
test.assert_equals(validate_time(''), False)
test.assert_equals(validate_time('09:00'), True)
test.assert_equals(validate_time('2400'), False)
test.assert_equals(validate_time('foo12:00bar'), False)
test.assert_equals(validate_time('010:00'), False)
test.assert_equals(validate_time('1;00'), False)
