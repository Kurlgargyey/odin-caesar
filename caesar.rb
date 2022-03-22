def caesar (string, left_shift)
  upcase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
  downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("")
  ciphered_string = ""
  string.each_char do |char|
    if char.ord >= 65 && char.ord <= 90
      ciphered_string += upcase_letters[(char.ord-65)+left_shift]
    elsif char.ord >= 97 && char.ord <= 122
      ciphered_string += downcase_letters[(char.ord-97)+left_shift]
    else
      ciphered_string += char
    end
  end
  ciphered_string
end



#p caesar("Hello world", 10)

downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("")
p downcase_letters.size
p downcase_letters[("w".ord-97)+10]