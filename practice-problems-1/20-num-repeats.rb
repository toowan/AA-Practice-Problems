# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

# compare each number to the rest of the array
# if it repeats once, increase count

def num_repeats(string)
  count = Hash.new(0)


  idx1 = 0
  while idx1 < string.length  # 0 < 5

    idx2 = idx1 + 1
    while idx2 < string.length
      if string[idx1] == string[idx2]
        letter = string[idx1]
        count[letter] += 1
      end

      idx2 += 1
    end

    idx1 += 1
  end

  print count
  return count.length
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)
