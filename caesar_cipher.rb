require 'pry-byebug'
def caesar_cipher(string, shift_factor)
  letters = ('a'..'z').to_a
  string_letters = string.split('')

  ciphered_letters = 
  string_letters.map do |letter|

    next unless letters.include?(letter.downcase)

    new_index = letters.index(letter.downcase) + shift_factor
    new_index -= 26 if new_index >= 26

    letter == letter.downcase ? letter = letters[new_index] 
                              : letter = letters[new_index].upcase
  end
  
  ciphered_string = ciphered_letters.join
  puts ciphered_string
end

caesar_cipher('Youssof', 3)