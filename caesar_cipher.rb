require 'pry-byebug'
def caesar_cipher(string, shift_factor)
  letters = ('a'..'z').to_a
  string_letters = string.split('')

  ciphered_letters = 
  string_letters.map do |letter|

    if letters.include?(letter.downcase)
      new_index = letters.index(letter.downcase) + shift_factor
      new_index -= 26 if new_index >= 26

      letter == letter.downcase ? letter = letters[new_index] 
                                : letter = letters[new_index].upcase
    else letter
      
    end
  end
  
  ciphered_string = ciphered_letters.join
  puts ciphered_string
end

puts "Hello! What do you want caesar to cipher?"
  cipher = gets.chomp
puts "How many letters do you want to cipher?"
  shift_factor = gets.chomp.to_i
puts "Here is your ciphered sentence!"

caesar_cipher(cipher, shift_factor)