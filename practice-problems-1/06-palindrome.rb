# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)

  idx1 = 0
  idx2 = -1

  while idx1 < string.length
    if string[idx1] != string[idx2]  
      return false
    end

    idx1 += 1
    idx2 -= 1
  end

  return true
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abcbe") == false: ' + (palindrome?('abcbe') == false).to_s)
puts('palindrome?("abcde") == false: ' + (palindrome?('abcde') == false).to_s)
puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
