# https://www.codewars.com/kata/548db0bd1df5bbf29b0000b7

=begin
Write a regular expression (regex) that will match a string only if it contains at least one valid date,
   in the format [mm-dd] (that is, a two-digit month, followed by a dash, followed by a two-digit date, surrounded by square brackets).

((0[13578]|1[02])-(0[1-9]|[12]\d|3[01])) --> months (01, 03, 05, 07, 08, 10, 12) with 31 days (01, 02, 03... --> 31)
   ((0[469]|11)-(0[1-9]|[12]\d|30)) --> months (04, 06, 09, 11) with 30 days (01, 02, 03... --> 30)
   (02-(0[1-9]|1\d|2[0-8])) --> month (02) with 28 days (01, 02, 03... --> 28)
=end

valid_date = /\[((01|03|05|07|08|10|12)-(0[1-9]|[12]\d|3[01]))|((04|06|09|11)-(0[1-9]|[12]\d|30))|(02-(0[1-9]|1\d|2[0-8]))\]/

describe("Basic tests") do
  it("Valid matches") do
    tests=["[02-28]", "[11-16]", "[01-31]", "[03-30]", "[07-30]", "ignore [08-25] ignore", "[100-200] [1-1] [01-19]"]
    for item in tests
      Test.assert_equals((valid_date =~ item)!=nil, true, item+" is valid")
    end
  end
  
  it("Invalid matches") do
    tests=["[02-31]", "[02-29]", "[6-3]", "[06- 3]", "[06/03]", "[12-00]"]
    for item in tests
      Test.assert_equals((valid_date =~ item)!=nil, false, item+" is invalid")
    end
  end
end
