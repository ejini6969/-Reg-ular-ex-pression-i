/* Implement a function which should return true if given object is a hexadecimal number, false otherwise.
   Hexadecimal numbers consist of one or more digits from range 0-9 A-F (in any case), optionally prefixed by 0x.
*/

String.prototype.hexNumber = function() {
  return /^(0x)?[\dA-F]+$/i.test(this)
};

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe('hex number', () => {
  it('Basic tests', () => {
    assert.strictEqual(''.hexNumber(), false);
    assert.strictEqual('0x'.hexNumber(), false);
    assert.strictEqual('0'.hexNumber(), true);
    assert.strictEqual('0xDEADBEEF'.hexNumber(), true);
    assert.strictEqual('1337bAbe'.hexNumber(), true);
  });
  
  it('More tests', () => {
    assert.strictEqual(' '.hexNumber(), false);
    assert.strictEqual('!'.hexNumber(), false);
    assert.strictEqual('\''.hexNumber(), false);
    assert.strictEqual('"'.hexNumber(), false);
    assert.strictEqual('#'.hexNumber(), false);
    assert.strictEqual('$'.hexNumber(), false);
    assert.strictEqual('%'.hexNumber(), false);
    assert.strictEqual('&'.hexNumber(), false);
    assert.strictEqual('('.hexNumber(), false);
    assert.strictEqual(')'.hexNumber(), false);
    assert.strictEqual('*'.hexNumber(), false);
    assert.strictEqual('+'.hexNumber(), false);
    Test.assertEquals(','.hexNumber(), false);
    Test.assertEquals('-'.hexNumber(), false);
    Test.assertEquals('.'.hexNumber(), false);
    Test.assertEquals('/'.hexNumber(), false);
    Test.assertEquals('0'.hexNumber(), true);
    Test.assertEquals('1'.hexNumber(), true);
    Test.assertEquals('2'.hexNumber(), true);
    Test.assertEquals('3'.hexNumber(), true);
    Test.assertEquals('4'.hexNumber(), true);
    Test.assertEquals('5'.hexNumber(), true);
    Test.assertEquals('6'.hexNumber(), true);
    Test.assertEquals('7'.hexNumber(), true);
    Test.assertEquals('8'.hexNumber(), true);
    Test.assertEquals('9'.hexNumber(), true);
    Test.assertEquals(':'.hexNumber(), false);
    Test.assertEquals(';'.hexNumber(), false);
    Test.assertEquals('<'.hexNumber(), false);
    Test.assertEquals('='.hexNumber(), false);
    Test.assertEquals('>'.hexNumber(), false);
    Test.assertEquals('?'.hexNumber(), false);
    Test.assertEquals('@'.hexNumber(), false);
    Test.assertEquals('A'.hexNumber(), true);
    Test.assertEquals('B'.hexNumber(), true);
    Test.assertEquals('C'.hexNumber(), true);
    Test.assertEquals('D'.hexNumber(), true);
    Test.assertEquals('E'.hexNumber(), true);
    Test.assertEquals('F'.hexNumber(), true);
    Test.assertEquals('G'.hexNumber(), false);
    Test.assertEquals('H'.hexNumber(), false);
    Test.assertEquals('I'.hexNumber(), false);
    Test.assertEquals('J'.hexNumber(), false);
    Test.assertEquals('K'.hexNumber(), false);
    Test.assertEquals('L'.hexNumber(), false);
    Test.assertEquals('M'.hexNumber(), false);
    Test.assertEquals('N'.hexNumber(), false);
    Test.assertEquals('O'.hexNumber(), false);
    Test.assertEquals('P'.hexNumber(), false);
    Test.assertEquals('Q'.hexNumber(), false);
    Test.assertEquals('R'.hexNumber(), false);
    Test.assertEquals('S'.hexNumber(), false);
    Test.assertEquals('T'.hexNumber(), false);
    Test.assertEquals('U'.hexNumber(), false);
    Test.assertEquals('V'.hexNumber(), false);
    Test.assertEquals('W'.hexNumber(), false);
    Test.assertEquals('X'.hexNumber(), false);
    Test.assertEquals('Y'.hexNumber(), false);
    Test.assertEquals('Z'.hexNumber(), false);
    Test.assertEquals('['.hexNumber(), false);
    Test.assertEquals('\\'.hexNumber(), false);
    Test.assertEquals(']'.hexNumber(), false);
    Test.assertEquals('^'.hexNumber(), false);
    Test.assertEquals('_'.hexNumber(), false);
    Test.assertEquals('`'.hexNumber(), false);
    Test.assertEquals('a'.hexNumber(), true);
    Test.assertEquals('b'.hexNumber(), true);
    Test.assertEquals('c'.hexNumber(), true);
    Test.assertEquals('d'.hexNumber(), true);
    Test.assertEquals('e'.hexNumber(), true);
    Test.assertEquals('f'.hexNumber(), true);
    Test.assertEquals('g'.hexNumber(), false);
    Test.assertEquals('h'.hexNumber(), false);
    Test.assertEquals('i'.hexNumber(), false);
    Test.assertEquals('j'.hexNumber(), false);
    Test.assertEquals('k'.hexNumber(), false);
    Test.assertEquals('l'.hexNumber(), false);
    Test.assertEquals('m'.hexNumber(), false);
    Test.assertEquals('n'.hexNumber(), false);
    Test.assertEquals('o'.hexNumber(), false);
    Test.assertEquals('p'.hexNumber(), false);
    Test.assertEquals('q'.hexNumber(), false);
    Test.assertEquals('r'.hexNumber(), false);
    Test.assertEquals('s'.hexNumber(), false);
    Test.assertEquals('t'.hexNumber(), false);
    Test.assertEquals('u'.hexNumber(), false);
    Test.assertEquals('v'.hexNumber(), false);
    Test.assertEquals('w'.hexNumber(), false);
    Test.assertEquals('x'.hexNumber(), false);
    Test.assertEquals('y'.hexNumber(), false);
    Test.assertEquals('z'.hexNumber(), false);
    Test.assertEquals('{'.hexNumber(), false);
    Test.assertEquals('|'.hexNumber(), false);
    Test.assertEquals('}'.hexNumber(), false);
    Test.assertEquals('~'.hexNumber(), false);
    
    assert.strictEqual('-1'.hexNumber(), false);
    assert.strictEqual('0.0'.hexNumber(), false);
    assert.strictEqual('0x0x0'.hexNumber(), false);
    assert.strictEqual('00000000'.hexNumber(), true);
    assert.strictEqual('0\n'.hexNumber(), false);
    assert.strictEqual('0\n1'.hexNumber(), false);
    assert.strictEqual('0 '.hexNumber(), false);
    assert.strictEqual('0 0'.hexNumber(), false);
    assert.strictEqual(' 0'.hexNumber(), false);
    assert.strictEqual('00x'.hexNumber(), false);
    assert.strictEqual('1x2'.hexNumber(), false);
    assert.strictEqual('1e5'.hexNumber(), true);
  });
})
