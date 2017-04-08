dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  words = string.downcase.split(" ")
  substring = Hash.new
  words.each do |word|
    dictionary.each do |dict|
      if word.include? dict
        if substring[dict].nil?
          substring[dict] = 1
        else
          substring[dict] = substring[dict]+1
        end
      end
    end
  end
  puts substring
end

puts "Enter a word or sentence!"
sent = gets.chomp
substrings(sent,dictionary)
