#Version using ASCII table but too much work to wrap from z to a
puts "Please enter your sentence"
sentence = gets.chomp
puts "Please enter your key (integer)"
key = gets.to_i

encryption = []

letters = sentence.split("")
letters.each do |l|
  if (l.ord > 64 && l.ord < 91)||(l.ord > 96 && l.ord < 123)
    temp_num = (l.ord + key)
    encryption << temp_num.chr
  else
    encryption << l
  end
end
puts encryption.join()
