# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

def count_vowels(string)    # abcd = 1

  idx = 0
  count = 0
  while idx < string.length  # 3 < 4
    if string[idx] == "a" || string[idx] == "e" || string[idx] == "i" || string[idx] == "o" || string[idx] == "u"
      count += 1
    end
    idx += 1
  end

  return count
end

# OR

def count_vowels(string)
vowels = Hash.new
vowels = {"a" => true, "e" => true, "i" => true, "o" => true, "u" => true}

idx = 0
while idx < string.length
  if vowels[string[idx]] == true
    count += 1
  end
end

  return count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
