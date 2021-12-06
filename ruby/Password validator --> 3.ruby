# https://www.codewars.com/kata/52e1476c8147a7547a000811

=begin
You need to write regex that will validate a password to make sure it meets the following criteria:
  1. At least six characters long
  2. contains a lowercase letter
  3. contains an uppercase letter
  4. contains a number
=end

regex= /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,}$/

describe("Basic tests") do
Test.assert_equals((regex=~'fjd3IR9')==0, true)
Test.assert_equals((regex=~'ghdfj32')==0, false)
Test.assert_equals((regex=~'DSJKHD23')==0, false)
Test.assert_equals((regex=~'dsF43')==0, false)
Test.assert_equals((regex=~'4fdg5Fj3')==0, true)
Test.assert_equals((regex=~'DHSJdhjsU')==0, false)
Test.assert_equals((regex=~'fjd3IR9.;')==0, false)
Test.assert_equals((regex=~'fjd3  IR9')==0, false)
Test.assert_equals((regex=~'djI38D55')==0, true)
Test.assert_equals((regex=~'a2.d412')==0, false)
Test.assert_equals((regex=~'JHD5FJ53')==0, false)
Test.assert_equals((regex=~'!fdjn345')==0, false)
Test.assert_equals((regex=~'jfkdfj3j')==0, false)
Test.assert_equals((regex=~'123')==0, false)
Test.assert_equals((regex=~'abc')==0, false)
Test.assert_equals((regex=~'123abcABC')==0, true)
Test.assert_equals((regex=~'ABC123abc')==0, true)
Test.assert_equals((regex=~'Password123')==0, true)
end
