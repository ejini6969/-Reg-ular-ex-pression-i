// Implement a function which should return true if given object is a digit (0-9), false otherwise.

String.prototype.digit = function() {
  return /^\d$/.test(this)
};

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe('hex number', () => {
  it('Basic tests', () => {
    assert.strictEqual(''.digit(), false);
    assert.strictEqual('7'.digit(), true);
    assert.strictEqual(' '.digit(), false);
    assert.strictEqual('a'.digit(), false);
    assert.strictEqual('a5'.digit(), false);
    assert.strictEqual('14'.digit(), false);
  });
});
