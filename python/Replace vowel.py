# https://www.codewars.com/kata/52fba66badcd10859f00097e

import re

def disemvowel(string):
    return re.sub("[aeiou]", '', string, flags = re.IGNORECASE)

import codewars_test as test
from solution import disemvowel

@test.describe("Fixed Tests")

def basic_tests():
    @test.it("First fixed test")
    def fixed_test_1():
        test.assert_equals(disemvowel("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!")
    @test.it("Second fixed test")
    def fixed_test_2():
        test.assert_equals(disemvowel("No offense but,\nYour writing is among the worst I've ever read"), "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd")
    @test.it("Third fixed test")
    def fixed_test_3():
        test.assert_equals(disemvowel("What are you, a communist?"), "Wht r y,  cmmnst?")
