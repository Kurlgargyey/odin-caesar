def caesar (string, left_shift=10)
# Generate our "ciphers"
  upcase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("").rotate!(left_shift)
  downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("").rotate!(left_shift)
  numerals = "0123456789".split("").rotate!(left_shift)
# Initialize a string to return
  ciphered_string = ""
  string.each_char do |char|
# Check for whether the current character needs to be ciphered and cipher it if so
    if char.ord >= 97 && char.ord <= 122
      ciphered_string += downcase_letters[(char.ord-97)]
    elsif char.ord >= 65 && char.ord <= 90
      ciphered_string += upcase_letters[(char.ord-65)]
    elsif char.ord >= 48 && char.ord <= 57
      ciphered_string += numerals[(char.ord-48)]
# Keep non-ciphered characters (whitespace, punctuation, etc)
    else
      ciphered_string += char
    end
  end
  ciphered_string
end