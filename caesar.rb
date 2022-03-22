def caesar (string, shift)
  string.each_char do |char|
  end
end

upcase_letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("")
downcase_letters = "abcdefghijklmnopqrstuvwxyz".split("")

p upcase_letters[("A".ord-65)+3]
"ABCDS".each_char do |char|
  char = upcase_letters[(char.ord-65)+3]
  p char
  end