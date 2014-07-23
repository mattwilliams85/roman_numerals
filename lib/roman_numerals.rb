def roman_numerals(inputtedNumber)
  numberBreakdown = {
    "M" => inputtedNumber/1000,
    "D" => inputtedNumber%1000/500,
    "C" => inputtedNumber%1000%500/100,
    "L" => inputtedNumber%1000%500%100/50,
    "X" => inputtedNumber%1000%500%100%50/10,
    "V" => inputtedNumber%1000%500%100%50%10/5,
    "I" => inputtedNumber%1000%500%100%50%10%5
  }
  romans = ""
  numberBreakdown.each do |symbol, count|
    count.times do
      romans += symbol
    end
  end
  romans.gsub('DCCCC', 'CM').gsub('CCCC', 'CD').gsub('LXXXX', 'XC').gsub('XXXX', 'XL').gsub('VIIII', 'IX').gsub('IIII','IV')
end
