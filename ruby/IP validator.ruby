# https://www.codewars.com/kata/515decfd9dcfc23bb6000006

# IPs should be considered valid if they consist of four octets, with values between 0 and 255, inclusive.

def is_valid_ip(ip)
  /^((\d|([1-9]\d)|(1\d\d)|(2[0-4]\d)|(25[0-5]))\.){4}$/ === ip + '.'
end

Test.expect(!is_valid_ip(''));
Test.expect(!is_valid_ip('abc.def.ghi.jkl'));
Test.expect(!is_valid_ip('123.456.789.0'));
Test.expect(!is_valid_ip('12.34.56'));
Test.expect(!is_valid_ip('256.1.2.3'));
Test.expect(!is_valid_ip('1.2.3.4.5'));
Test.expect(!is_valid_ip('123,45,67,89'));
Test.expect(!is_valid_ip(' 1.2.3.4'));
Test.expect(!is_valid_ip('1.2.3.4 '));

Test.expect(is_valid_ip('0.0.0.0'));
Test.expect(is_valid_ip('123.45.67.89'));
Test.expect(is_valid_ip('255.255.255.255'));
Test.expect(is_valid_ip('1.2.3.4'));
Test.expect(is_valid_ip('31.41.59.26'));
Test.expect(is_valid_ip('53.58.97.93'));
Test.expect(is_valid_ip('238.46.26.43'));
Test.expect(is_valid_ip('38.32.79.50'));
Test.expect(is_valid_ip('28.84.197.169'));
Test.expect(is_valid_ip('39.93.75.105'));
Test.expect(is_valid_ip('82.0.97.49'));
Test.expect(is_valid_ip('44.59.230.78'));
Test.expect(is_valid_ip('164.0.62.86'));
Test.expect(is_valid_ip('208.99.86.28'));
Test.expect(is_valid_ip('0.34.82.53'));
Test.expect(is_valid_ip('42.117.0.67'));
Test.expect(is_valid_ip('98.214.80.86'));
Test.expect(is_valid_ip('51.32.82.30'));
Test.expect(is_valid_ip('66.47.0.93'));
Test.expect(is_valid_ip('84.46.0.95'));
Test.expect(is_valid_ip('50.58.22.31'));
Test.expect(is_valid_ip('72.53.59.40'));
Test.expect(is_valid_ip('81.28.48.1'))
