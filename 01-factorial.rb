# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.
#
# Difficulty: easy.

# factorial(4) == 24
# factorial(4) = 4 * 3 * 2 * 1 = n * (n-1) * (n-2) * (n-3)
# factorial = the product of all positive integers less than or equal to n
# n * (n-1) * (n-2)

def factorial(n)
  result = 1

  i = 0
  while i < n
    result = result * (n-i)
    i += 1
  end

  result
end




# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'factorial(0) == 1: ' + (factorial(0) == 1).to_s
)
puts(
  'factorial(1) == 1: ' + (factorial(1) == 1).to_s
)
puts(
  'factorial(2) == 2: ' + (factorial(2) == 2).to_s
)
puts(
  'factorial(3) == 6: ' + (factorial(3) == 6).to_s
)
puts(
  'factorial(4) == 24: ' + (factorial(4) == 24).to_s
)
