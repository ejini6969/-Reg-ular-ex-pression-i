// Implement a function which should return true if given object is a number representable by 8 bit signed integer (-128 to -1 or 0 to 127), false otherwise.

String.prototype.signedEightBitNumber=function(){
 return /^((-?(1([01]\d|2[0-7])|[1-9]\d|[1-9]))|-128|0)$/.test(this) 
}

describe("Regexp Basics - is it a eight bit signed number?", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual("".signedEightBitNumber(), false);
    assert.strictEqual("0".signedEightBitNumber(), true);
    assert.strictEqual("00".signedEightBitNumber(), false);
    assert.strictEqual("-0".signedEightBitNumber(), false);
    assert.strictEqual("55".signedEightBitNumber(), true);
    assert.strictEqual("-23".signedEightBitNumber(), true);
    assert.strictEqual("042".signedEightBitNumber(), false);
    assert.strictEqual("127".signedEightBitNumber(), true);
    assert.strictEqual("128".signedEightBitNumber(), false);
    assert.strictEqual("999".signedEightBitNumber(), false);
    assert.strictEqual("-128".signedEightBitNumber(), true);
    assert.strictEqual("-129".signedEightBitNumber(), false);
    assert.strictEqual("-999".signedEightBitNumber(), false);
    assert.strictEqual("1\n".signedEightBitNumber(), false);
    assert.strictEqual("1 ".signedEightBitNumber(), false);
    assert.strictEqual(" 1".signedEightBitNumber(), false);
    assert.strictEqual("1\n2".signedEightBitNumber(), false);
    assert.strictEqual("+1".signedEightBitNumber(), false);
    assert.strictEqual("--1".signedEightBitNumber(), false);
  })
})
