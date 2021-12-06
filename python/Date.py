# https://www.codewars.com/kata/548db0bd1df5bbf29b0000b7

"""Write a regular expression (regex) that will match a string only if it contains at least one valid date,
   in the format [mm-dd] (that is, a two-digit month, followed by a dash, followed by a two-digit date, surrounded by square brackets).
"""

"""((0[13578]|1[02])-(0[1-9]|[12]\d|3[01])) --> months (01, 03, 05, 07, 08, 10, 12) with 31 days (01, 02, 03... --> 31)
   ((0[469]|11)-(0[1-9]|[12]\d|30)) --> months (04, 06, 09, 11) with 30 days (01, 02, 03... --> 30)
   (02-(0[1-9]|1\d|2[0-8])) --> month (02) with 28 days (01, 02, 03... --> 28)
"""

import re

valid_date = re.compile(r"\[((0[13578]|1[02])-3[01]|(0[469]|11)-30|(0[13-9]|1[012])-29|(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-8]))\]")

@test.describe("Basic tests")
def _():
  @test.it("Valid matches")
  def _():
    tests=["[02-28]", "[11-16]", "[01-31]", "[03-30]", "[07-30]", "ignore [08-25] ignore", "[100-200] [1-1] [01-19]"]
    for item in tests:
      test.assert_equals(valid_date.search(item)!=None, True, item+" is valid")
      
  @test.it("Invalid matches") 
  def _():
    tests=["[02-31]", "[02-29]", "[6-3]", "[06- 3]", "[06/03]", "[12-00]"]
    for item in tests:
      test.assert_equals(valid_date.search(item)!=None, False, item+" is invalid")
