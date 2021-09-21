// Implement a function which should return true if given object is a number representable by 8 bit unsigned integer (0-255), false otherwise.

String.prototype.eightBitNumber = function() {
  return /^(25[0-5]|2[0-4]\d|1\d\d|[1-9]\d|\d)$/.test(this)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Fixed tests", () => {
  it("Basic tests", () => {
    assert.equal("".eightBitNumber(), false);
    assert.equal("0".eightBitNumber(), true);
    assert.equal("00".eightBitNumber(), false);
    assert.equal("55".eightBitNumber(), true);
    assert.equal("042".eightBitNumber(), false);
    assert.equal("123".eightBitNumber(), true);
    assert.equal("255".eightBitNumber(), true);
    assert.equal("256".eightBitNumber(), false);
    assert.equal("999".eightBitNumber(), false);
  });
});
