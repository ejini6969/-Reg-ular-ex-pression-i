/* The rules for a valid password are as follows:
   1. There needs to be at least 1 uppercase letter.
   2. There needs to be at least 1 lowercase letter.
   3. There needs to be at least 1 number.
   4. The password needs to be at least 8 characters long.
*/

function password(str) {
   return /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$/.test(str)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(password("Abcd1234"), true);
    assert.strictEqual(password("Abcd123"), false);
    assert.strictEqual(password("abcd1234"), false);
    assert.strictEqual(password("AbcdefGhijKlmnopQRsTuvwxyZ1234567890"), true);
    assert.strictEqual(password("ABCD1234"), false);
    assert.strictEqual(password("Ab1!@#$%^&*()-_+={}[]|\:;?/>.<,"), true);
    assert.strictEqual(password("!@#$%^&*()-_+={}[]|\:;?/>.<,"), false);
 });
})
