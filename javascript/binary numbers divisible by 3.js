// https://www.codewars.com/kata/54de279df565808f8b00126a

// Regular expression that matches binary inputs that are multiple of 3

var multipleOf3Regex = /^(0*(1(0(1)*0)*1)*0*)*$/;

Test.assertEquals(multipleOf3Regex instanceof RegExp, true);
Test.assertEquals(multipleOf3Regex.test.toString(), "function test() { [native code] }");

// Invalid inputs
console.log("Testing invalid inputs");
Test.assertEquals(multipleOf3Regex.test(" 0"), false);
Test.assertEquals(multipleOf3Regex.test("abc"), false);
Test.assertEquals(multipleOf3Regex.test("011 110"), false);

// Valid inputs
console.log("Testing valid inputs");
Test.assertEquals(multipleOf3Regex.test("000"), true);
Test.assertEquals(multipleOf3Regex.test("001"), false);
Test.assertEquals(multipleOf3Regex.test("011"), true);
Test.assertEquals(multipleOf3Regex.test("110"), true);
Test.assertEquals(multipleOf3Regex.test("111"), false);
Test.assertEquals(multipleOf3Regex.test((12345678).toString(2)), true);
