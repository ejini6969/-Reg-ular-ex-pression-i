// https://www.codewars.com/kata/52e1476c8147a7547a000811

/* You need to write regex that will validate a password to make sure it meets the following criteria:
  1. At least six characters long
  2. contains a lowercase letter
  3. contains an uppercase letter
  4. contains a number
*/

function validate(password) {
  return /^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)[A-Za-z\d]{6,}$/.test(password)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(validate('djI38D55'), true);
    assert.strictEqual(validate('a2.d412'), false);
    assert.strictEqual(validate('JHD5FJ53'), false);
    assert.strictEqual(validate('!fdjn345'), false);
    assert.strictEqual(validate('jfkdfj3j'), false);
    assert.strictEqual(validate('123'), false);
    assert.strictEqual(validate('abc'), false);
    assert.strictEqual(validate('Password123'), true);
  })
})
