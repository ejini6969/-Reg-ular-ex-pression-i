// https://www.codewars.com/kata/515decfd9dcfc23bb6000006

// IPs should be considered valid if they consist of four octets, with values between 0 and 255, inclusive.

function isValidIP(str) {
  return /^((\d|([1-9]\d)|(1\d\d)|(2[0-4]\d)|(25[0-5]))\.){4}$/.test(str + '.')
}

describe("Sample tests", () => {

  Test.assertEquals(isValidIP(''), false);
  Test.assertEquals(isValidIP('abc.def.ghi.jkl'), false);
  Test.assertEquals(isValidIP('123.456.789.0'), false);
  Test.assertEquals(isValidIP('12.34.56'), false);
  Test.assertEquals(isValidIP('01.02.03.04'), false);
  Test.assertEquals(isValidIP('256.1.2.3'), false);
  Test.assertEquals(isValidIP('1.2.3.4.5'), false);
  Test.assertEquals(isValidIP('123,45,67,89'), false);
  Test.assertEquals(isValidIP('1e0.1e1.1e2.2e2'), false);
  Test.assertEquals(isValidIP(' 1.2.3.4'), false);
  Test.assertEquals(isValidIP('1.2.3.4 '), false);
  Test.assertEquals(isValidIP('12.34.56.-7'), false);
  Test.assertEquals(isValidIP('1.2.3.4\n'), false);
  Test.assertEquals(isValidIP('\n1.2.3.4'), false);

  Test.assertEquals(isValidIP('0.0.0.0'), true);
  Test.assertEquals(isValidIP('123.45.67.89'), true);
  Test.assertEquals(isValidIP('255.255.255.255'), true);
  Test.assertEquals(isValidIP('1.2.3.4'), true);
  Test.assertEquals(isValidIP('31.41.59.26'), true);
  Test.assertEquals(isValidIP('53.58.97.93'), true);
  Test.assertEquals(isValidIP('238.46.26.43'), true);
  Test.assertEquals(isValidIP('38.32.79.50'), true);
  Test.assertEquals(isValidIP('28.84.197.169'), true);
  Test.assertEquals(isValidIP('39.93.75.105'), true);
  Test.assertEquals(isValidIP('82.0.97.49'), true);
  Test.assertEquals(isValidIP('44.59.230.78'), true);
  Test.assertEquals(isValidIP('164.0.62.86'), true);
  Test.assertEquals(isValidIP('208.99.86.28'), true);
  Test.assertEquals(isValidIP('0.34.82.53'), true);
  Test.assertEquals(isValidIP('42.117.0.67'), true);
  Test.assertEquals(isValidIP('98.214.80.86'), true);
  Test.assertEquals(isValidIP('51.32.82.30'), true);
  Test.assertEquals(isValidIP('66.47.0.93'), true);
  Test.assertEquals(isValidIP('84.46.0.95'), true);
  Test.assertEquals(isValidIP('50.58.22.31'), true);
  Test.assertEquals(isValidIP('72.53.59.40'), true);
  Test.assertEquals(isValidIP('81.28.48.1'), true);
});
