# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

# 332

def dasherize_number(num)
num_string = num.to_s
result = ""

  idx = 0
  while idx < num_string.length  # 2 < 3
    digit = num_string[idx].to_s  # digit = 2

    if idx > 0
      prev_digit = num_string[idx - 1].to_i   # prev_digit = 3
      if digit % 2 == 1 || prev_digit % 2  == 1
        result += '-'
      end
    end
    result += num_string[idx].to_s  # result = 3 + '-3' + '-2'
    idx += 1
  end

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
