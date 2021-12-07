# https://www.codewars.com/kata/52fba66badcd10859f00097e

def disemvowel(str)
  str.gsub(/[aeiou]/i, '')
end

def disemvowel(str)
  str.delete('aeiouAEIOU')
end

describe "Solution" do
  it "Fixed tests" do
    Test.assert_equals(disemvowel("This website is for losers LOL!"), "Ths wbst s fr lsrs LL!")
    Test.assert_equals(disemvowel("No offense but,\nYour writing is among the worst I've ever read"), "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd")
    Test.assert_equals(disemvowel("What are you, a communist?"), "Wht r y,  cmmnst?")
  end
end
