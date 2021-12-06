# https://www.codewars.com/kata/56a4a3d4043c316002000042/discuss

=begin
Write a regex to validate a 24 hours time string. Criteria:
     1. '01:00' (leading zeros)
     2. Ranging from '00:00' to '23:59' 
     3. '24:00' NOT ACCEPTED (SHOULD BE '00:00')
=end

def validate_time(time)
  /\A((0?\d)|(1\d)|(2[0-3])):[0-5]\d\z/ === time
end

describe("Basic tests") do
  Test.assert_equals(validate_time('01:00'), true)
  Test.assert_equals(validate_time('1:00'), true)
  Test.assert_equals(validate_time('00:00'), true)
  Test.assert_equals(validate_time('13:1'), false)
  Test.assert_equals(validate_time('12:60'), false)
  Test.assert_equals(validate_time('12: 60'), false)
  Test.assert_equals(validate_time('24:00'), false)
  Test.assert_equals(validate_time('24o:00'), false)
  Test.assert_equals(validate_time('24:000'), false)
  Test.assert_equals(validate_time(''), false)
  Test.assert_equals(validate_time('2400'), false)
end
