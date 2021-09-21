/*
  Passwords must abide by the following requirements:
  More than 3 characters but less than 20.
  Must contain only alphanumeric characters.
  Must contain letters and numbers.
*/

function validPass(password){
  return /^(?=.*[a-z])(?=.*\d)[a-z\d]{4,19}$/i.test(password) ? 'VALID' : 'INVALID'
}

const chai = require("chai");
const assert = chai.assert;
chai.config.truncateThreshold=0;

describe("Basic tests", () => {
  it("Testing for fixed tests", () => {
    assert.strictEqual( validPass('Username123') , 'VALID' );
    assert.strictEqual( validPass('Username') , 'INVALID' );
    assert.strictEqual( validPass('1Username') , 'VALID' );
    assert.strictEqual( validPass('123') , 'INVALID' );
    assert.strictEqual( validPass('a12') , 'INVALID' );
    assert.strictEqual( validPass('Username123!') , 'INVALID' );
    assert.strictEqual( validPass('ThisPasswordIsTooLong1234') , 'INVALID' )
  });
});

    
    
    
    


