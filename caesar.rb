def caesar (string, left_shift=10)
# Generate our "ciphers"
  upcase_letters = ("A".."Z").to_a.rotate!(left_shift)
  downcase_letters = ("a".."z").to_a.rotate!(left_shift)
  numerals = ("0".."9").to_a.rotate!(left_shift)
# Initialize a string to return
  ciphered_string = ""
  string.each_char do |char|
# Check for whether the current character needs to be ciphered and cipher it if so
    if char.ord.between?(97, 122)
      ciphered_string += downcase_letters[(char.ord-97)]
    elsif char.ord.between?(65, 90)
      ciphered_string += upcase_letters[(char.ord-65)]
    elsif char.ord.between?(48, 57)
      ciphered_string += numerals[(char.ord-48)]
# Keep non-ciphered characters (whitespace, punctuation, etc)
    else
      ciphered_string += char
    end
  end
  ciphered_string
end

puts "Enter the string to be ciphered:"
string = gets.chomp
puts "Enter the desired left shift (enter a negative integer for a right shift):"
left_shift = gets.chomp.to_i

puts caesar(string, left_shift)