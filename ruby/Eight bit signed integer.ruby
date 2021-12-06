# https://www.codewars.com/kata/567ed73340895395c100002e

# Implement a function which should return true if given object is a number representable by 8 bit signed integer (-128 to -1 or 0 to 127), false otherwise.
  
class String
  def signed_eight_bit_number?
     /\A((-?(1([01]\d|2[0-7])|[1-9]\d|[1-9]))|-128|0)\z/ === self
  end
end

Test.assert_equals "".signed_eight_bit_number?, false
Test.assert_equals "0".signed_eight_bit_number?, true
Test.assert_equals "00".signed_eight_bit_number?, false
Test.assert_equals "-0".signed_eight_bit_number?, false
Test.assert_equals "55".signed_eight_bit_number?, true
Test.assert_equals "-23".signed_eight_bit_number?, true
Test.assert_equals "042".signed_eight_bit_number?, false
Test.assert_equals "127".signed_eight_bit_number?, true
Test.assert_equals "128".signed_eight_bit_number?, false
Test.assert_equals "999".signed_eight_bit_number?, false
Test.assert_equals "-128".signed_eight_bit_number?, true
Test.assert_equals "-129".signed_eight_bit_number?, false
Test.assert_equals "-999".signed_eight_bit_number?, false

(-210..210).each do |i| 
  expected = (-128..127).include?(i)
  Test.assert_equals "#{i}".signed_eight_bit_number?, expected
end

(0..200).each do |i| 
  Test.assert_equals "0#{i}".signed_eight_bit_number?, false
  Test.assert_equals "-0#{i}".signed_eight_bit_number?, false
end

Test.assert_equals "1\n".signed_eight_bit_number?, false
Test.assert_equals "1 ".signed_eight_bit_number?, false
Test.assert_equals " 1".signed_eight_bit_number?, false
Test.assert_equals "1\n2".signed_eight_bit_number?, false
Test.assert_equals "+1".signed_eight_bit_number?, false
Test.assert_equals "--1".signed_eight_bit_number?, false
