# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

# a b c => c b a
# i = 0 reversed_string = string[0] = a
# i = 1 reversed_string = string[1] + a = ba
# i = 2 reversed_string = string[2] + ba = cba


def reverse(string)

  reversed_string = ""
  i = 0
  while i < string.length
    reversed_string = string[i] + reversed_string
    i += 1
  end

  reversed_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
)
puts(
  'reverse("a") == "a": ' + (reverse("a") == "a").to_s
)
puts(
  'reverse("") == "": ' + (reverse("") == "").to_s
)
