// Implement a function which should return true if given object is a number representable by 6 bit unsigned integer (0-63), false otherwise.

String.prototype.sixBitNumber = function() {
  return /^(6[0-3]|[1-5]\d|\d)$/.test(this)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Sample tests", () => {
  it("Basic tests", () => {
    assert.equal("".sixBitNumber(), false);
    assert.equal("0".sixBitNumber(), true);
    assert.equal("00".sixBitNumber(), false);
    assert.equal("55".sixBitNumber(), true);
    assert.equal("63".sixBitNumber(), true);
    assert.equal("64".sixBitNumber(), false);
    assert.equal("-0".sixBitNumber(), false);
    assert.equal("-5".sixBitNumber(), false);
    assert.equal("05".sixBitNumber(), false);
    assert.equal("5".sixBitNumber(), true);
  });
});
