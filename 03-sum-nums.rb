# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

# num = 5
# 0 + 1 + 2 + 3 + 4 + 5 = 15
# (5-5) + (5-4) + (5-3) + (5-2) + (5-1) + (5-0)
# (num-5) + (num-4) + (num-3) + (num-2) + (num-1) + (num-0)


def sum_nums(num)

  value = 0
  i = 0
  while i < num
    value = value + (num - i) 
    i += 1
  end

  return value
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
