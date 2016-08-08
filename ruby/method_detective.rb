# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".tr("iNvEsTiGaTiOn", "InVeStIgAtIoN")
# => “InVeStIgAtIoN”

puts "zom".insert(2, "o")
# => “zoom”

 puts "enhance".center(20)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".replace("the usual suspects")
#=> "the usual suspects"

puts " suspects".replace("the usual suspects")
# => "the usual suspects"

puts "The case of the disappearing last letter"[0..38]
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter"[1..39]
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze(" ") 
# => "Elementary, my dear Watson!"

puts "z".ord
# => 122 
# 122 is the corresponding integer ordinal to z

puts "How many times does the letter 'a' appear in this string?".index("a")
# => 4