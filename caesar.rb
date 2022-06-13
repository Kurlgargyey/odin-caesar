# frozen_string_literal: true

def generate_ciphers(shift)
  # Generate our ciphers
  ciphers = {}
  ciphers[:downcase_cipher] = ('a'..'z').to_a.rotate!(shift)
  ciphers[:upcase_cipher] = ('A'..'Z').to_a.rotate!(shift)
  ciphers[:numeral_cipher] = ('0'..'9').to_a.rotate!(shift)
  ciphers
end

def cipher_char(char, ciphers)
  return ciphers[:downcase_cipher][(char.ord - 97)] if char.ord.between?(97, 122)
  return ciphers[:upcase_cipher][(char.ord - 65)] if char.ord.between?(65, 90)
  return ciphers[:numeral_cipher][(char.ord - 48)] if char.ord.between?(48, 57)

  # Keep non-ciphered characters (whitespace, punctuation, etc)
  char
end

def caesar(string, shift = 7)
  ciphers = generate_ciphers(shift)
  # Initialize a string to return
  ciphered_string = +''
  # Make sure the string is UTF-8 encoded
  string = string.to_s.encode('UTF-8', undef: :replace, invalid: :replace, replace: '')
  # Iterate through string to find and cipher all ciphered characters
  string.each_char do |char|
    ciphered_string += cipher_char(char, ciphers)
  end
  ciphered_string
end
