def caesar (string, left_shift=10)
  upcase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").rotate!(left_shift)
  downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("").rotate!(left_shift)
  numerals = "0123456789".split("").rotate!(left_shift)
  ciphered_string = ""
  string.each_char do |char|
    if char.ord >= 97 && char.ord <= 122
      ciphered_string += downcase_letters[(char.ord-97)]
    elsif char.ord >= 65 && char.ord <= 90
      ciphered_string += upcase_letters[(char.ord-65)]
    elsif char.ord >= 48 && char.ord <= 57
      ciphered_string += numerals[(char.ord-48)]
    else
      ciphered_string += char
    end
  end
  ciphered_string
end

p caesar("Hello world 200", 10)
p caesar("Alphabet array shifting tech! Woohoo!!! 100", -3)
p caesar("There are 5000 Zombies at our gates, but we have a 100ft high wall to fend them off.", 15)
p caesar("Hello world", 26)