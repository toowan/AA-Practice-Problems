# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)

  idx1 = 0
  idx2 = string.length - 1
  while idx1 < string.length
    if string[idx1] != string[idx2]
      return false
    end

    idx1 += 1
    idx2 -= 1
  end

  return true
end

def longest_palindrome(string)  
longest = ""

  idx = 0
  while idx < string.length

    length = 1
    while (idx + length) <= string.length  
    substring = string.slice(idx, length)

      if palindrome?(substring) && substring.length >= longest.length
        longest = substring
      end

    length += 1
    end

    idx += 1
  end

  return longest
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
