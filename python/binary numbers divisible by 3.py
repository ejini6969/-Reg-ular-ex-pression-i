# https://www.codewars.com/kata/54de279df565808f8b00126a

# Regular expression that matches binary inputs that are multiple of 3

PATTERN = re.compile(r'^0*((1(01*0)*1)*0*)*$')

test.it("Do not cheat...")
test.assert_equals(type(re.compile(r'')), type(PATTERN), "Do a regex, nothing else...")
test.assert_equals(bool(re.compile(PATTERN.pattern).match("{:b}".format(12345678))), True, "Seriously, that's boring, to have to handle guys like you...")

test.describe("Sample tests")

tests = [(False, " 0" ),
         (False, "abc"),
         (True,  "000"),
         (True,  "110"),
         (False, "110a"),
         (False, "111"),
         (True,  "{:b}".format(12345678)),
        ]

for exp,s in tests:
    test.assert_equals(bool(PATTERN.match(s)), exp, "Should work with '{}'".format(s))


test.describe("More tests")

tests = [(False, "110a"),
         (False, "011 110"),
         (False, "001"),
         (True, "011"),
         ]

for exp,s in tests:
    test.assert_equals(bool(PATTERN.match(s)), exp, "Should work with '{}'".format(s))


test.describe("Big tests")

RNGS = ((0,10000), (1000000, 1010000))

for l,h in RNGS:
    for n in range(l,h):
        s = "{:b}".format(n)
        if bool(PATTERN.match(s)) != (n%3 == 0):
            test.assert_equals(bool(n%3), not n%3, "Should work with '{}'".format(s))
