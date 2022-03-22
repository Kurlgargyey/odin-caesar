def caesar (string, left_shift)
  upcase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").rotate!(left_shift)
  downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("").rotate!(left_shift)
  ciphered_string = ""
  string.each_char do |char|
    if char.ord >= 97 && char.ord <= 122
      ciphered_string += downcase_letters[(char.ord-97)]
    elsif char.ord >= 65 && char.ord <= 90
      ciphered_string += upcase_letters[(char.ord-65)]
    else
      ciphered_string += char
    end
  end
  ciphered_string
end



#p caesar("Hello world", 10)

p downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("").rotate!(-3)