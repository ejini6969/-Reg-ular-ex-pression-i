# https://www.codewars.com/kata/54de279df565808f8b00126a

# Regular expression that matches binary inputs that are multiple of 3

multipleOf3Regex = /^0*((1(01*0)*1)*0*)*$/

# Invalid inputs
puts "Testing invalid inputs"
Test.expect((multipleOf3Regex =~ " 0") == nil);
Test.expect((multipleOf3Regex =~ "abc") == nil);
Test.expect((multipleOf3Regex =~ "011 110") == nil);

# Valid inputs
puts "Testing valid inputs"
Test.expect((multipleOf3Regex =~ "000") != nil);
Test.expect((multipleOf3Regex =~ "001") == nil);
Test.expect((multipleOf3Regex =~ "011") != nil);
Test.expect((multipleOf3Regex =~ "110") != nil);
Test.expect((multipleOf3Regex =~ "111") == nil);
Test.expect((multipleOf3Regex =~ (12345678).to_s(2)) != nil);
