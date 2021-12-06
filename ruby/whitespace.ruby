# https://www.codewars.com/kata/567de8823fa5eee02100002a

# Implement a function which should return true if given object consists exclusively of zero or more whitespace characters, false otherwise.

class String
  def whitespace?
    self == '' || /\A[\s]+\z/ === self
  end
end

Test.assert_equals "".whitespace?, true
Test.assert_equals " ".whitespace?, true
Test.assert_equals "\n\r\n\r".whitespace?, true
Test.assert_equals "a".whitespace?, false
Test.assert_equals "w\n".whitespace?, false
Test.assert_equals "\t".whitespace?, true
Test.assert_equals "\t \n\r\n  ".whitespace?, true

Test.assert_equals "\x01".whitespace?, false
Test.assert_equals "\x02".whitespace?, false
Test.assert_equals "\x03".whitespace?, false
Test.assert_equals "\x04".whitespace?, false
Test.assert_equals "\x05".whitespace?, false
Test.assert_equals "\x06".whitespace?, false
Test.assert_equals "\a".whitespace?, false
Test.assert_equals "\b".whitespace?, false
Test.assert_equals "\t".whitespace?, true
Test.assert_equals "\n".whitespace?, true
Test.assert_equals "\v".whitespace?, true
Test.assert_equals "\f".whitespace?, true
Test.assert_equals "\r".whitespace?, true
Test.assert_equals "\x0E".whitespace?, false
Test.assert_equals "\x0F".whitespace?, false
Test.assert_equals "\x10".whitespace?, false
Test.assert_equals "\x11".whitespace?, false
Test.assert_equals "\x12".whitespace?, false
Test.assert_equals "\x13".whitespace?, false
Test.assert_equals "\x14".whitespace?, false
Test.assert_equals "\x15".whitespace?, false
Test.assert_equals "\x16".whitespace?, false
Test.assert_equals "\x17".whitespace?, false
Test.assert_equals "\x18".whitespace?, false
Test.assert_equals "\x19".whitespace?, false
Test.assert_equals "\x1A".whitespace?, false
Test.assert_equals "\e".whitespace?, false
Test.assert_equals "\x1C".whitespace?, false
Test.assert_equals "\x1D".whitespace?, false
Test.assert_equals "\x1E".whitespace?, false
Test.assert_equals "\x1F".whitespace?, false
Test.assert_equals " ".whitespace?, true
Test.assert_equals "!".whitespace?, false
Test.assert_equals "\"".whitespace?, false
Test.assert_equals "#".whitespace?, false
Test.assert_equals "$".whitespace?, false
Test.assert_equals "%".whitespace?, false
Test.assert_equals "&".whitespace?, false
Test.assert_equals "'".whitespace?, false
Test.assert_equals "(".whitespace?, false
Test.assert_equals ")".whitespace?, false
Test.assert_equals "*".whitespace?, false
Test.assert_equals "+".whitespace?, false
Test.assert_equals ",".whitespace?, false
Test.assert_equals "-".whitespace?, false
Test.assert_equals ".".whitespace?, false
Test.assert_equals "/".whitespace?, false
Test.assert_equals "0".whitespace?, false
Test.assert_equals "1".whitespace?, false
Test.assert_equals "2".whitespace?, false
Test.assert_equals "3".whitespace?, false
Test.assert_equals "4".whitespace?, false
Test.assert_equals "5".whitespace?, false
Test.assert_equals "6".whitespace?, false
Test.assert_equals "7".whitespace?, false
Test.assert_equals "8".whitespace?, false
Test.assert_equals "9".whitespace?, false
Test.assert_equals ":".whitespace?, false
Test.assert_equals ";".whitespace?, false
Test.assert_equals "<".whitespace?, false
Test.assert_equals "=".whitespace?, false
Test.assert_equals ">".whitespace?, false
Test.assert_equals "?".whitespace?, false
Test.assert_equals "@".whitespace?, false
Test.assert_equals "A".whitespace?, false
Test.assert_equals "B".whitespace?, false
Test.assert_equals "C".whitespace?, false
Test.assert_equals "D".whitespace?, false
Test.assert_equals "E".whitespace?, false
Test.assert_equals "F".whitespace?, false
Test.assert_equals "G".whitespace?, false
Test.assert_equals "H".whitespace?, false
Test.assert_equals "I".whitespace?, false
Test.assert_equals "J".whitespace?, false
Test.assert_equals "K".whitespace?, false
Test.assert_equals "L".whitespace?, false
Test.assert_equals "M".whitespace?, false
Test.assert_equals "N".whitespace?, false
Test.assert_equals "O".whitespace?, false
Test.assert_equals "P".whitespace?, false
Test.assert_equals "Q".whitespace?, false
Test.assert_equals "R".whitespace?, false
Test.assert_equals "S".whitespace?, false
Test.assert_equals "T".whitespace?, false
Test.assert_equals "U".whitespace?, false
Test.assert_equals "V".whitespace?, false
Test.assert_equals "W".whitespace?, false
Test.assert_equals "X".whitespace?, false
Test.assert_equals "Y".whitespace?, false
Test.assert_equals "Z".whitespace?, false
Test.assert_equals "[".whitespace?, false
Test.assert_equals "\\".whitespace?, false
Test.assert_equals "]".whitespace?, false
Test.assert_equals "^".whitespace?, false
Test.assert_equals "_".whitespace?, false
Test.assert_equals "`".whitespace?, false
Test.assert_equals "a".whitespace?, false
Test.assert_equals "b".whitespace?, false
Test.assert_equals "c".whitespace?, false
Test.assert_equals "d".whitespace?, false
Test.assert_equals "e".whitespace?, false
Test.assert_equals "f".whitespace?, false
Test.assert_equals "g".whitespace?, false
Test.assert_equals "h".whitespace?, false
Test.assert_equals "i".whitespace?, false
Test.assert_equals "j".whitespace?, false
Test.assert_equals "k".whitespace?, false
Test.assert_equals "l".whitespace?, false
Test.assert_equals "m".whitespace?, false
Test.assert_equals "n".whitespace?, false
Test.assert_equals "o".whitespace?, false
Test.assert_equals "p".whitespace?, false
Test.assert_equals "q".whitespace?, false
Test.assert_equals "r".whitespace?, false
Test.assert_equals "s".whitespace?, false
Test.assert_equals "t".whitespace?, false
Test.assert_equals "u".whitespace?, false
Test.assert_equals "v".whitespace?, false
Test.assert_equals "w".whitespace?, false
Test.assert_equals "x".whitespace?, false
Test.assert_equals "y".whitespace?, false
Test.assert_equals "z".whitespace?, false
Test.assert_equals "{".whitespace?, false
Test.assert_equals "|".whitespace?, false
Test.assert_equals "}".whitespace?, false
Test.assert_equals "~".whitespace?, false
Test.assert_equals "\nX".whitespace?, false
