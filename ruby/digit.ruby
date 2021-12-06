# https://www.codewars.com/kata/567bf4f7ee34510f69000032

# Implement a function which should return true if given object is a digit (0-9), false otherwise.

class String
  def digit?
    /\A\d\z/ === self
  end
end

Test.assert_equals "".digit?, false
Test.assert_equals "7".digit?, true
Test.assert_equals " ".digit?, false
Test.assert_equals "a".digit?, false
Test.assert_equals "a5".digit?, false
Test.assert_equals "14".digit?, false

Test.assert_equals " ".digit?, false
Test.assert_equals "!".digit?, false
Test.assert_equals "\"".digit?, false
Test.assert_equals "#".digit?, false
Test.assert_equals "$".digit?, false
Test.assert_equals "%".digit?, false
Test.assert_equals "&".digit?, false
Test.assert_equals "'".digit?, false
Test.assert_equals "(".digit?, false
Test.assert_equals ")".digit?, false
Test.assert_equals "*".digit?, false
Test.assert_equals "+".digit?, false
Test.assert_equals ",".digit?, false
Test.assert_equals "-".digit?, false
Test.assert_equals ".".digit?, false
Test.assert_equals "/".digit?, false
Test.assert_equals "0".digit?, true
Test.assert_equals "1".digit?, true
Test.assert_equals "2".digit?, true
Test.assert_equals "3".digit?, true
Test.assert_equals "4".digit?, true
Test.assert_equals "5".digit?, true
Test.assert_equals "6".digit?, true
Test.assert_equals "7".digit?, true
Test.assert_equals "8".digit?, true
Test.assert_equals "9".digit?, true
Test.assert_equals ":".digit?, false
Test.assert_equals ";".digit?, false
Test.assert_equals "<".digit?, false
Test.assert_equals "=".digit?, false
Test.assert_equals ">".digit?, false
Test.assert_equals "?".digit?, false
Test.assert_equals "@".digit?, false
Test.assert_equals "A".digit?, false
Test.assert_equals "B".digit?, false
Test.assert_equals "C".digit?, false
Test.assert_equals "D".digit?, false
Test.assert_equals "E".digit?, false
Test.assert_equals "F".digit?, false
Test.assert_equals "G".digit?, false
Test.assert_equals "H".digit?, false
Test.assert_equals "I".digit?, false
Test.assert_equals "J".digit?, false
Test.assert_equals "K".digit?, false
Test.assert_equals "L".digit?, false
Test.assert_equals "M".digit?, false
Test.assert_equals "N".digit?, false
Test.assert_equals "O".digit?, false
Test.assert_equals "P".digit?, false
Test.assert_equals "Q".digit?, false
Test.assert_equals "R".digit?, false
Test.assert_equals "S".digit?, false
Test.assert_equals "T".digit?, false
Test.assert_equals "U".digit?, false
Test.assert_equals "V".digit?, false
Test.assert_equals "W".digit?, false
Test.assert_equals "X".digit?, false
Test.assert_equals "Y".digit?, false
Test.assert_equals "Z".digit?, false
Test.assert_equals "[".digit?, false
Test.assert_equals "\\".digit?, false
Test.assert_equals "]".digit?, false
Test.assert_equals "^".digit?, false
Test.assert_equals "_".digit?, false
Test.assert_equals "`".digit?, false
Test.assert_equals "a".digit?, false
Test.assert_equals "b".digit?, false
Test.assert_equals "c".digit?, false
Test.assert_equals "d".digit?, false
Test.assert_equals "e".digit?, false
Test.assert_equals "f".digit?, false
Test.assert_equals "g".digit?, false
Test.assert_equals "h".digit?, false
Test.assert_equals "i".digit?, false
Test.assert_equals "j".digit?, false
Test.assert_equals "k".digit?, false
Test.assert_equals "l".digit?, false
Test.assert_equals "m".digit?, false
Test.assert_equals "n".digit?, false
Test.assert_equals "o".digit?, false
Test.assert_equals "p".digit?, false
Test.assert_equals "q".digit?, false
Test.assert_equals "r".digit?, false
Test.assert_equals "s".digit?, false
Test.assert_equals "t".digit?, false
Test.assert_equals "u".digit?, false
Test.assert_equals "v".digit?, false
Test.assert_equals "w".digit?, false
Test.assert_equals "x".digit?, false
Test.assert_equals "y".digit?, false
Test.assert_equals "z".digit?, false
Test.assert_equals "{".digit?, false
Test.assert_equals "|".digit?, false
Test.assert_equals "}".digit?, false
Test.assert_equals "~".digit?, false

Test.assert_equals "1\n0".digit?, false
Test.assert_equals "1\n".digit?, false
Test.assert_equals "1 ".digit?, false
Test.assert_equals " 1".digit?, false
