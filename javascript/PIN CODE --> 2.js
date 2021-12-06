// https://www.codewars.com/kata/56a25ba95df27b7743000016

/* Write a function that takes in a numeric code of any length. 
  The function should check if the code begins with 1, 2, or 3 and return true if so. Return false otherwise.
*/

function validateCode (code) {
  return /^[1-3]/.test(code)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(validateCode(123), true);
    assert.strictEqual(validateCode(248), true);
    assert.strictEqual(validateCode(8), false);
    assert.strictEqual(validateCode(321), true);
    assert.strictEqual(validateCode(9453), false);  
  })
})
