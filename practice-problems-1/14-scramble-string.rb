# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

# a b c d, [3, 1, 2, 0]  => d b c a
# 0 1 2 3


# new location:  a[position[0]], b[position[1]], c[position[2]], d[position[3]]

def scramble_string(string, positions)
new_array = []

  idx = 0
  while idx < string.length
    new_array.push(string[positions[idx]]) 

    idx += 1
  end

  return new_array.join("")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
  (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
)
puts(
  'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
  (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
)
