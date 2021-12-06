# https://www.codewars.com/kata/567bed99ee3451292c000025

# Implement the function which should return true if given object is a vowel (meaning a, e, i, o, u, uppercase or lowercase), and false otherwise.

class String
  def vowel?
    /\A[aeiou]\z/i === self
  end
end

Test.assert_equals "".vowel?, false
Test.assert_equals "a".vowel?, true
Test.assert_equals "E".vowel?, true
Test.assert_equals "ou".vowel?, false
Test.assert_equals "z".vowel?, false
Test.assert_equals "lol".vowel?, false

Test.assert_equals " ".vowel?, false
Test.assert_equals "!".vowel?, false
Test.assert_equals "\"".vowel?, false
Test.assert_equals "#".vowel?, false
Test.assert_equals "$".vowel?, false
Test.assert_equals "%".vowel?, false
Test.assert_equals "&".vowel?, false
Test.assert_equals "'".vowel?, false
Test.assert_equals "(".vowel?, false
Test.assert_equals ")".vowel?, false
Test.assert_equals "*".vowel?, false
Test.assert_equals "+".vowel?, false
Test.assert_equals ",".vowel?, false
Test.assert_equals "-".vowel?, false
Test.assert_equals ".".vowel?, false
Test.assert_equals "/".vowel?, false
Test.assert_equals "0".vowel?, false
Test.assert_equals "1".vowel?, false
Test.assert_equals "2".vowel?, false
Test.assert_equals "3".vowel?, false
Test.assert_equals "4".vowel?, false
Test.assert_equals "5".vowel?, false
Test.assert_equals "6".vowel?, false
Test.assert_equals "7".vowel?, false
Test.assert_equals "8".vowel?, false
Test.assert_equals "9".vowel?, false
Test.assert_equals ":".vowel?, false
Test.assert_equals ";".vowel?, false
Test.assert_equals "<".vowel?, false
Test.assert_equals "=".vowel?, false
Test.assert_equals ">".vowel?, false
Test.assert_equals "?".vowel?, false
Test.assert_equals "@".vowel?, false
Test.assert_equals "A".vowel?, true
Test.assert_equals "B".vowel?, false
Test.assert_equals "C".vowel?, false
Test.assert_equals "D".vowel?, false
Test.assert_equals "E".vowel?, true
Test.assert_equals "F".vowel?, false
Test.assert_equals "G".vowel?, false
Test.assert_equals "H".vowel?, false
Test.assert_equals "I".vowel?, true
Test.assert_equals "J".vowel?, false
Test.assert_equals "K".vowel?, false
Test.assert_equals "L".vowel?, false
Test.assert_equals "M".vowel?, false
Test.assert_equals "N".vowel?, false
Test.assert_equals "O".vowel?, true
Test.assert_equals "P".vowel?, false
Test.assert_equals "Q".vowel?, false
Test.assert_equals "R".vowel?, false
Test.assert_equals "S".vowel?, false
Test.assert_equals "T".vowel?, false
Test.assert_equals "U".vowel?, true
Test.assert_equals "V".vowel?, false
Test.assert_equals "W".vowel?, false
Test.assert_equals "X".vowel?, false
Test.assert_equals "Y".vowel?, false
Test.assert_equals "Z".vowel?, false
Test.assert_equals "[".vowel?, false
Test.assert_equals "\\".vowel?, false
Test.assert_equals "]".vowel?, false
Test.assert_equals "^".vowel?, false
Test.assert_equals "_".vowel?, false
Test.assert_equals "`".vowel?, false
Test.assert_equals "a".vowel?, true
Test.assert_equals "b".vowel?, false
Test.assert_equals "c".vowel?, false
Test.assert_equals "d".vowel?, false
Test.assert_equals "e".vowel?, true
Test.assert_equals "f".vowel?, false
Test.assert_equals "g".vowel?, false
Test.assert_equals "h".vowel?, false
Test.assert_equals "i".vowel?, true
Test.assert_equals "j".vowel?, false
Test.assert_equals "k".vowel?, false
Test.assert_equals "l".vowel?, false
Test.assert_equals "m".vowel?, false
Test.assert_equals "n".vowel?, false
Test.assert_equals "o".vowel?, true
Test.assert_equals "p".vowel?, false
Test.assert_equals "q".vowel?, false
Test.assert_equals "r".vowel?, false
Test.assert_equals "s".vowel?, false
Test.assert_equals "t".vowel?, false
Test.assert_equals "u".vowel?, true
Test.assert_equals "v".vowel?, false
Test.assert_equals "w".vowel?, false
Test.assert_equals "x".vowel?, false
Test.assert_equals "y".vowel?, false
Test.assert_equals "z".vowel?, false
Test.assert_equals "{".vowel?, false
Test.assert_equals "|".vowel?, false
Test.assert_equals "}".vowel?, false
Test.assert_equals "~".vowel?, false

Test.assert_equals "a\na".vowel?, false
Test.assert_equals "a\nb".vowel?, false
Test.assert_equals "a\n".vowel?, false
Test.assert_equals " a".vowel?, false
Test.assert_equals "a ".vowel?, false
