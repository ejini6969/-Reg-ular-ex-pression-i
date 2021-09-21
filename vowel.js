// Implement the function which should return true if given object is a vowel (meaning a, e, i, o, u, uppercase or lowercase), and false otherwise.

String.prototype.vowel = function() {
  return /^[aeiou]$/i.test(this)
};

describe('vowel', () => {
  it('Basic tests', () => {
    assert.strictEqual(''.vowel(), false);
    assert.strictEqual('a'.vowel(), true);
    assert.strictEqual('E'.vowel(), true);
    assert.strictEqual('ou'.vowel(), false);
    assert.strictEqual('z'.vowel(), false);
    assert.strictEqual('lol'.vowel(), false);
  });
});
