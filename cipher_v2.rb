puts "Please enter a sentence to encrypt"
sentence = gets.chomp
letters = sentence.split("")
puts "Please enter the encryption key (integer)"
key = gets.to_i

down = 'abcdefghijklmnopqrstuvwxyz'.split("")
up = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split("")
encryption = []

letters.each do |letter|
  if up.index(letter).nil? && down.index(letter).nil?
    new_letter = letter
  elsif up.index(letter).nil?
    new_index = (down.index(letter)+key)%26  # %26 fulfils wrapping
    new_letter = down[new_index]
  elsif down.index(letter).nil?
    new_index = (up.index(letter)+key)%26
    new_letter = up[new_index]
  end
  encryption << new_letter
end
puts encryption.join("")
