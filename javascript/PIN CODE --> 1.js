// https://www.codewars.com/kata/55f8a9c06c018a0d6e000132

// Validate if a PIN CODE is exactly four or six digits long 

function validatePIN (pin) {
  return /^(\d{4}|\d{6})$/.test(pin)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("validatePIN", () => {
      
  it("should return False for pins with length other than 4 or 6", () => {
    assert.strictEqual(validatePIN("1"),false, "Wrong output for '1'");
    assert.strictEqual(validatePIN("12"),false, "Wrong output for '12'");
    assert.strictEqual(validatePIN("123"),false, "Wrong output for '123'");
    assert.strictEqual(validatePIN("12345"),false, "Wrong output for '12345'");
    assert.strictEqual(validatePIN("1234567"),false, "Wrong output for '1234567'");
    assert.strictEqual(validatePIN("-1234"),false, "Wrong output for '-1234'");
    assert.strictEqual(validatePIN("-12345"),false, "Wrong output for '-12345'");
    assert.strictEqual(validatePIN("1.234"),false, "Wrong output for '1.234'");
    assert.strictEqual(validatePIN("00000000"),false, "Wrong output for '00000000'");
  });
  
  it("should return False for pins which contain characters other than digits", () => {
    assert.strictEqual(validatePIN("a234"),false, "Wrong output for 'a234'");
    assert.strictEqual(validatePIN(".234"),false, "Wrong output for '.234'");
    assert.strictEqual(validatePIN("9%9%"),false, "Wrong output for '9%9%'");
  });
  
  it("should return True for valid pins", () => {
    assert.strictEqual(validatePIN("1234"),true, "Wrong output for '1234'");
    assert.strictEqual(validatePIN("0000"),true, "Wrong output for '0000'");
    assert.strictEqual(validatePIN("1111"),true, "Wrong output for '1111'");
    assert.strictEqual(validatePIN("123456"),true, "Wrong output for '123456'");
    assert.strictEqual(validatePIN("098765"),true, "Wrong output for '098765'");
    assert.strictEqual(validatePIN("000000"),true, "Wrong output for '000000'");
    assert.strictEqual(validatePIN("123456"),true, "Wrong output for '123456'");
    assert.strictEqual(validatePIN("090909"),true, "Wrong output for '090909'");
  });
})
