// https://www.codewars.com/kata/567de72e8b3621b3c300000b

// Complete the code which should return true if the given object is a single ASCII letter (lower or upper case), false otherwise.

String.prototype.isLetter = function() {
  return /^[a-z]$/i.test(this)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Tests", () => {
  it("test", () => {
    assert.strictEqual("".isLetter(), false);
    assert.strictEqual("a".isLetter(), true);
    assert.strictEqual("X".isLetter(), true);
    assert.strictEqual("7".isLetter(), false);
    assert.strictEqual("*".isLetter(), false);
    assert.strictEqual("ab".isLetter(), false);
    assert.strictEqual("a\n".isLetter(), false);
  });
});
