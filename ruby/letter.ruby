# https://www.codewars.com/kata/567de72e8b3621b3c300000b

# Complete the code which should return true if the given object is a single ASCII letter (lower or upper case), false otherwise.

class String
  def letter?
    /\A[a-z]\z/i === self
  end
end

Test.assert_equals "".letter?, false
Test.assert_equals "a".letter?, true
Test.assert_equals "X".letter?, true
Test.assert_equals "7".letter?, false
Test.assert_equals "*".letter?, false
Test.assert_equals "ab".letter?, false
Test.assert_equals "a\n".letter?, false

Test.assert_equals " ".letter?, false
Test.assert_equals "!".letter?, false
Test.assert_equals "\"".letter?, false
Test.assert_equals "#".letter?, false
Test.assert_equals "$".letter?, false
Test.assert_equals "%".letter?, false
Test.assert_equals "&".letter?, false
Test.assert_equals "'".letter?, false
Test.assert_equals "(".letter?, false
Test.assert_equals ")".letter?, false
Test.assert_equals "*".letter?, false
Test.assert_equals "+".letter?, false
Test.assert_equals ",".letter?, false
Test.assert_equals "-".letter?, false
Test.assert_equals ".".letter?, false
Test.assert_equals "/".letter?, false
Test.assert_equals "0".letter?, false
Test.assert_equals "1".letter?, false
Test.assert_equals "2".letter?, false
Test.assert_equals "3".letter?, false
Test.assert_equals "4".letter?, false
Test.assert_equals "5".letter?, false
Test.assert_equals "6".letter?, false
Test.assert_equals "7".letter?, false
Test.assert_equals "8".letter?, false
Test.assert_equals "9".letter?, false
Test.assert_equals ":".letter?, false
Test.assert_equals ";".letter?, false
Test.assert_equals "<".letter?, false
Test.assert_equals "=".letter?, false
Test.assert_equals ">".letter?, false
Test.assert_equals "?".letter?, false
Test.assert_equals "@".letter?, false
Test.assert_equals "A".letter?, true
Test.assert_equals "B".letter?, true
Test.assert_equals "C".letter?, true
Test.assert_equals "D".letter?, true
Test.assert_equals "E".letter?, true
Test.assert_equals "F".letter?, true
Test.assert_equals "G".letter?, true
Test.assert_equals "H".letter?, true
Test.assert_equals "I".letter?, true
Test.assert_equals "J".letter?, true
Test.assert_equals "K".letter?, true
Test.assert_equals "L".letter?, true
Test.assert_equals "M".letter?, true
Test.assert_equals "N".letter?, true
Test.assert_equals "O".letter?, true
Test.assert_equals "P".letter?, true
Test.assert_equals "Q".letter?, true
Test.assert_equals "R".letter?, true
Test.assert_equals "S".letter?, true
Test.assert_equals "T".letter?, true
Test.assert_equals "U".letter?, true
Test.assert_equals "V".letter?, true
Test.assert_equals "W".letter?, true
Test.assert_equals "X".letter?, true
Test.assert_equals "Y".letter?, true
Test.assert_equals "Z".letter?, true
Test.assert_equals "[".letter?, false
Test.assert_equals "\\".letter?, false
Test.assert_equals "]".letter?, false
Test.assert_equals "^".letter?, false
Test.assert_equals "_".letter?, false
Test.assert_equals "`".letter?, false
Test.assert_equals "a".letter?, true
Test.assert_equals "b".letter?, true
Test.assert_equals "c".letter?, true
Test.assert_equals "d".letter?, true
Test.assert_equals "e".letter?, true
Test.assert_equals "f".letter?, true
Test.assert_equals "g".letter?, true
Test.assert_equals "h".letter?, true
Test.assert_equals "i".letter?, true
Test.assert_equals "j".letter?, true
Test.assert_equals "k".letter?, true
Test.assert_equals "l".letter?, true
Test.assert_equals "m".letter?, true
Test.assert_equals "n".letter?, true
Test.assert_equals "o".letter?, true
Test.assert_equals "p".letter?, true
Test.assert_equals "q".letter?, true
Test.assert_equals "r".letter?, true
Test.assert_equals "s".letter?, true
Test.assert_equals "t".letter?, true
Test.assert_equals "u".letter?, true
Test.assert_equals "v".letter?, true
Test.assert_equals "w".letter?, true
Test.assert_equals "x".letter?, true
Test.assert_equals "y".letter?, true
Test.assert_equals "z".letter?, true
Test.assert_equals "{".letter?, false
Test.assert_equals "|".letter?, false
Test.assert_equals "}".letter?, false
Test.assert_equals "~".letter?, false

Test.assert_equals " x".letter?, false
Test.assert_equals "x\ny".letter?, false
Test.assert_equals "x\t".letter?, false
Test.assert_equals "r\r".letter?, false
Test.assert_equals " \r".letter?, false
