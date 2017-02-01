 # Write English interpretations of the following Ruby code:
# 1. Each item in the 'numbers' array is called 'number.' For each 'number',
# print out the number multiplied by 3.

# ```ruby
# # numbers is an array
# numbers.each do |number|
#   puts 3 * number
# end
# ```

# 2. Each item in the 'names' array is called 'name'. For each 'name', print out
# its length.

# ```ruby
# # names is an array
# names.each do |name|
#   puts name.length
# end
# ```

# 3. Sum starts out at zero. Each item in the 'numbers' array is called 'number'.
# Add each number to the sum. Print out the final sum.

# ```ruby
# # numbers is an array
# sum = 0
# numbers.each do |number|
#   sum += number
# end
# puts sum
# ```

# 4. Each key in the hash 'hash' is called 'name', and each value in the hash is
# called 'age'. For each key- value pair, print out the key and value.

# ```ruby
# # hash is a hash
# hash.each do |name, age|
#   puts "#{name} is #{age} years old."
# end
# ```

# 5. Sum starts out at zero. Each key in the 'account' hash is called 'transaction'
# and each value is called 'vlaue'. For each key-vlaue pair, add the value to the sum.
# Print out the sum of all the values at the end.

# ```ruby
# # account is a hash
# sum = 0
# account.each do |transaction, value|
#   sum += value
# end
# puts "The value the account is #{sum}"
# ```

# 6. Each key in the 'addresses' hash is called 'name' and each value is calle
# 'address'. For each key-value pair, print out the "(key/name) lives on (value/address)"

# ```ruby
# # addresses is a hash
# addresses.each do |name, address|
#   puts "#{name} lives on #{address}"
# end
# ```

### Turning English into `.each`
# 1. `For every element 'word' in the array 'sentences' print out the word.`
# sentences.each do |word|
#   puts word
# end
# 2. `For every element 'phone_number' in the array 'numbers' print out the phone number if it is a MA area code.`
# ma_area_codes = [339, 351, 413, 508, 617, 774, 781, 857, 978]
# numbers.each do |phone_number|
#   if ma_area_codes.include?(phone_number[0..2])
#     puts phone_number
#   end
# end
# 3. `For every element number in the array 'numbers' print out every odd number.`
# numbers.aech do |number|
#   if number % 2 != 0
#     puts number
#   end
# end
# 4. `For every name-age pair in the hash 'ages', print out each pair.`
# ages.each do |name, age|
#   puts name age
# end
# 5. `For every name-age pair in the hash 'ages', print out a pair if the age is > 10.`
# ages.each do |name, age|
#   if age > 10
#     puts name age
#   end
# end
# 6. `For every name-age pair in the hash 'ages', print out a pair if the age is even.`
# ages.each do |name, age|
#   if age % 2 == 0
#     puts name age
#   end
# end

array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

# Write Ruby code to find out the answers to the following questions:
# * What is the sum of all the numbers in `array`?
sum = 0
array.each do |num|
  sum += num
end
puts sum
puts "~~~"
sum = array.inject(0) do |sum, num|
  sum += num
end
puts sum
# * How would you print out each value of the array?
puts array
# * What is the sum of all of the even numbers?
even_sum = 0
array.each do |num|
  if num % 2 == 0
    even_sum += num
  end
end
puts even_sum
# * What is the sum of all of the odd numbers?
odd_sum = 0
array.each do |num|
  if num % 2 != 0
    odd_sum += num
  end
end
puts odd_sum
# * What is the sum of all the numbers divisble by 5?
div_by_five_sum = 0
array.each do |num|
  if num % 5 == 0
    div_by_five_sum += num
  end
end
puts div_by_five_sum
# * What is the sum of the squares of all the numbers in the array?
squares_sum = 0
array.each do |num|
  squares_sum += (num * num)
end
puts squares_sum

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

# Write Ruby code to find out the answers to the following questions:

# * How would you print out each name backwards in `array`?
aray.each do |name|
  puts name.reverse
end
# * What are the total number of characters in the names in `array`?
array.join.length
# * How many names in `array` are less than 5 characters long?
short_names = 0
array.each do |n|
  if n.length < 5
  short_names += 1
  end
end
puts "There are #{short_names} names with less than five characters."
# * How many names in `array` end in a vowel?
vowels = ["a", "e", "i", "o", "u"]
vowel_count = 0
array.each do |n|
  if vowels.include?(n[-1])
    vowel_count += 1
  end
end
puts "There are #{vowel_count} names that end in vowels."
# * How many names in `array` are more than 5 characters long?
long_names = 0
array.each do |n|
  if n.length > 5
    long_names += 1
  end
end
puts "#{long_names} names are more than five characters long."
# * How many names in `array` are exactly 5 characters in length?
fives = 0
array.each do |n|
  if n.length == 5
    fives += 1
  end
end
puts "#{fives} names are exactly five characters long."
