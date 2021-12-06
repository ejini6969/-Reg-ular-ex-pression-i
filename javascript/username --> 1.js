// https://www.codewars.com/kata/56a3f08aa9a6cc9b75000023

/* Write a simple regex to validate a username. Allowed characters are:
     1. lowercase letters,
     2. numbers,
     3. underscore
   Length should be between 4 and 16 characters (both included).
*/

function validateUsr(username) {
  return /^[a-z\d_]{4,16}$/.test(username)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(validateUsr('asddsa'), true);
    assert.strictEqual(validateUsr('a'), false);
    assert.strictEqual(validateUsr('Hass'), false);
    assert.strictEqual(validateUsr('Hasd_12assssssasasasasasaasasasasas'), false);
    assert.strictEqual(validateUsr(''), false);
    assert.strictEqual(validateUsr('____'), true);
    assert.strictEqual(validateUsr('012'), false);
    assert.strictEqual(validateUsr('p1pp1'), true);
    assert.strictEqual(validateUsr('asd43 34'), false);
    assert.strictEqual(validateUsr('asd43_34'), true);
  })
});
