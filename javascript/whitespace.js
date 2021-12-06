// https://www.codewars.com/kata/567de8823fa5eee02100002a

// Implement a function which should return true if given object consists exclusively of zero or more whitespace characters, false otherwise.

String.prototype.whitespace=function(){
 return !this.length || /^[\s]+$/.test(this)
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Regexp Basics - is it all whitespace?", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual("".whitespace(), true);
    assert.strictEqual(" ".whitespace(), true);
    assert.strictEqual("\n\r\n\r".whitespace(), true);
    assert.strictEqual("a".whitespace(), false);
    assert.strictEqual("w\n".whitespace(), false);
    assert.strictEqual("\t".whitespace(), true);
    assert.strictEqual(" a\n".whitespace(), false);
    assert.strictEqual("\t \n\r\n  ".whitespace(), true);
    assert.strictEqual("\n\r\n\r ".whitespace(), true);
    assert.strictEqual("\n\r\n\r 3".whitespace(), false);
  })
})
