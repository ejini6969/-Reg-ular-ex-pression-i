/* Write a regular expression (regex) that will match a string only if it contains at least one valid date,
   in the format [mm-dd] (that is, a two-digit month, followed by a dash, followed by a two-digit date, surrounded by square brackets).
*/

/* ((0[13578]|1[02])-(0[1-9]|[12]\d|3[01])) --> months (01, 03, 05, 07, 08, 10, 12) with 31 days (01, 02, 03... --> 31)
   ((0[469]|11)-(0[1-9]|[12]\d|30)) --> months (04, 06, 09, 11) with 30 days (01, 02, 03... --> 30)
   (02-(0[1-9]|1\d|2[0-8])) --> month (02) with 28 days (01, 02, 03... --> 28)
*/

const validDate = /\[(((0[13578]|1[02])-(0[1-9]|[12]\d|3[01]))|((0[469]|11)-(0[1-9]|[12]\d|30))|(02-(0[1-9]|1\d|2[0-8])))\]/

const chai = require("chai");
const assert = chai.assert;
const _ = require("lodash")
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual(validDate.test("[01-23]"), true);
    assert.strictEqual(validDate.test("[02-31]"), false);
    assert.strictEqual(validDate.test("[02-16]"), true);
    assert.strictEqual(validDate.test("[ 6-03]"), false);
    assert.strictEqual(validDate.test("ignored [08-11] ignored"), true);
    assert.strictEqual(validDate.test("[3] [12-04] [09-tenth]"), true);
  })
  
  it("matches valid numbers", () => {
      _.shuffle([ // valid
        "[02-28]",
        "[11-16]",
        "[01-31]",
        "[03-30]",
        "[07-30]",
        "ignore [08-25] ignore",
        "[100-200] [1-1] [01-19]"
      ]).forEach(function(test) {
        assert.strictEqual(validDate.test(test), true, "Input: " + JSON.stringify(test) + " should be valid, but was found invalid.");
      });
    });
  
  it("does not match invalid numbers", () => {
      _.shuffle([ // invalid
        "[02-31]",
        "[02-29]",
        "[6-3]",
        "[06- 3]",
        "[06/03]",
        "[12-00]"
      ]).forEach(function(test) {
        assert.strictEqual(!alidDate.test(test), false, "Input: " + JSON.stringify(test) + " should be invalid but was found valid.");
      });
    });
})
