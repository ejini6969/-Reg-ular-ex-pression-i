# https://www.codewars.com/kata/517abf86da9663f1d2000003

=begin
Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"
=end

def to_camel_case(str)
  str.gsub(/([-_])([a-z])/i){$2.upcase}
end

Test.assert_equals(to_camel_case(''), '', "An empty string was provided but not returned")
Test.assert_equals(to_camel_case("the_stealth_warrior"), "theStealthWarrior", "to_camel_case('the_stealth_warrior') did not return correct value")
Test.assert_equals(to_camel_case("The-Stealth-Warrior"), "TheStealthWarrior", "to_camel_case('The-Stealth-Warrior') did not return correct value")
Test.assert_equals(to_camel_case("A-B-C"), "ABC", "to_camel_case('A-B-C') did not return correct value")
