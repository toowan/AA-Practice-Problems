# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)
  substrings = string.split(" ")  # ["this", "is", "a", "sentence"]

  idx = 0
  while idx < substrings.length   # 1 < 4

    word = substrings[idx]  # word = "this"
    word[0] = word[0].upcase  # word[0] = T

    idx += 1
  end


  return substrings.join(" ")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
  (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
)
puts(
  'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
  (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
)
