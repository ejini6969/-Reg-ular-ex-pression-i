/* Write a regex to validate a 24 hours time string. Criteria:
     1. '01:00' (leading zeros)
     2. Ranging from '00:00' to '23:59' 
     3. '24:00' NOT ACCEPTED (SHOULD BE '00:00')
*/

function validateTime(time) {
  return /^(0?\d|1\d|2[0-3]):[0-5]\d$/.test(time)  
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(validateTime('01:00'), true);
    assert.strictEqual(validateTime('1:00'), true);
    assert.strictEqual(validateTime('1:00'), true);
    assert.strictEqual(validateTime('00:00'), true);
    assert.strictEqual(validateTime('13:1'), false);
    assert.strictEqual(validateTime('12:60'), false);
    assert.strictEqual(validateTime('12: 60'), false);
    assert.strictEqual(validateTime('24:00'), false);
    assert.strictEqual(validateTime('24o:00'), false);
    assert.strictEqual(validateTime('24:000'), false);
    assert.strictEqual(validateTime(''), false);
    assert.strictEqual(validateTime('2400'), false);
    assert.strictEqual(validateTime('foo12:00bar'), false);
    assert.strictEqual(validateTime('010:00'), false);
    assert.strictEqual(validateTime('1;00'), false);
  })
})
