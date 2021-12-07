// https://www.codewars.com/kata/525f47c79f2f25a4db000025

/* Only worry about the following format:
(123) 456-7890 (don't forget the space after the close parentheses) */

function validPhoneNumber(phoneNumber){
  return /^\(\d{3}\) \d{3}-\d{4}$/.test(phoneNumber)
}

describe("Tests", () => {
  it("test", () => {
    Test.assertEquals(validPhoneNumber("(123) 456-7890"), true);
    Test.assertEquals(validPhoneNumber("(1111)555 2345"), false);
    Test.assertEquals(validPhoneNumber("(098) 123 4567"), false);
    Test.assertEquals(validPhoneNumber("(123)456-7890"), false);
    Test.assertEquals(validPhoneNumber("abc(123)456-7890"), false);
    Test.assertEquals(validPhoneNumber("(123)456-7890abc"), false);
    Test.assertEquals(validPhoneNumber("abc(123)456-7890abc"), false);
    Test.assertEquals(validPhoneNumber("abc(123) 456-7890"), false);
    Test.assertEquals(validPhoneNumber("(123) 456-7890abc"), false);
    Test.assertEquals(validPhoneNumber("abc(123) 456-7890abc"), false);
  });
});
