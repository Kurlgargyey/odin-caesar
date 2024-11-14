# odin-ruby-caesar
Simple caesar cipher implementation in Ruby for The Odin Project

I was pretty proud of coming up with the idea to simply rotate the cipher arrays by the shift. In hindsight, this would not scale as well as a more wordy solution that does modulo calculations on the array index, because the rotations would be expensive if there are many different changing shift values in play.
