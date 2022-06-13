require './caesar'

puts 'Enter the string to be ciphered:'
string = gets.chomp
puts 'Enter the desired left shift (enter a negative integer for a right shift):'
left_shift = gets.chomp.to_i

puts caesar(string, left_shift)
