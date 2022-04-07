require 'digest'

puts "Введите слово или фразу для шифрования:"

user_word = STDIN.gets.chomp

puts "Каким способом зашифровать:
1. MD5
2. SHA1"

user_choose = STDIN.gets.to_i

if user_choose == 1
  puts Digest::MD5.hexdigest(user_word)
else
  puts Digest::SHA1.hexdigest(user_word)
end



