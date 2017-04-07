puts "Please enter the encrypted sentence"
encryption = gets.chomp
letters = encryption.split("")
puts "Please enter the encryption key (positive integer)"
key = gets.to_i

down = 'abcdefghijklmnopqrstuvwxyz'.split("")
up = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("")
sentence = []

letters.each do |letter|
  if up.index(letter).nil? && down.index(letter).nil?
    new_letter = letter
  elsif up.index(letter).nil?
    new_index = (down.index(letter)+(26-key))%26
    new_letter = down[new_index]
  elsif down.index(letter).nil?
    new_index = (up.index(letter)+(26-key))%26
    new_letter = up[new_index]
  end
  sentence << new_letter
end
puts sentence.join("")
