# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

# a b c a
# 0 1 2 3

def most_common_letter(string)
  count = Hash.new(0)

  idx1 = 0
  while idx1 < string.length  # 0 < 4
    count[string[idx1]] += 1
    idx1 += 1
  end

  return count.max_by {|k, v| v}
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
