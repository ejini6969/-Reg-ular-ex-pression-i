# https://www.codewars.com/kata/56a3f08aa9a6cc9b75000023

=begin
Write a simple regex to validate a username. Allowed characters are:
     1. lowercase letters,
     2. numbers,
     3. underscore
   Length should be between 4 and 16 characters (both included).
=end

=begin
def validate_usr(username)
  /\A[a-z\d_]{4,16}\z/ === username
end
=end

def validate_usr(username)
  username.match?(/^[a-z0-9_]{4,16}$/)
end

describe("Basic tests") do
Test.assert_equals(validate_usr('asddsa'), true)
Test.assert_equals(validate_usr('a'), false)
Test.assert_equals(validate_usr('Hass'), false)
Test.assert_equals(validate_usr('Hasd_12assssssasasasasasaasasasasas'), false)
Test.assert_equals(validate_usr(''), false)
Test.assert_equals(validate_usr('____'), true)
Test.assert_equals(validate_usr('012'), false)
Test.assert_equals(validate_usr('p1pp1'), true)
Test.assert_equals(validate_usr('asd43 34'), false)
Test.assert_equals(validate_usr('asd43_34'), true)
end
