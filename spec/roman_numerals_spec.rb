require("rspec")
require("roman_numerals")

describe("roman_numerals") do
  it("takes a number less than 4 and converts it to roman numerals") do
    roman_numerals(1).should(eq("I"))
    roman_numerals(2).should(eq("II"))
    roman_numerals(3).should(eq("III"))
  end
  it("takes 4 and converts it to roman numerals") do
    roman_numerals(14).should(eq("XIV"))
  end
  it("takes 9 and converts it to roman numerals") do
    roman_numerals(9).should(eq("IX"))
  end
  it("takes a special case double digit number and converts it to roman numerals") do
    roman_numerals(44).should(eq("XLIV"))
    roman_numerals(99).should(eq("XCIX"))
  end
  it("takes a special case large number and converts it to roman numerals") do
    roman_numerals(3999).should(eq("MMMCMXCIX"))
  end
end
