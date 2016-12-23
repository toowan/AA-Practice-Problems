# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.


# sentence = "hello you motherfucker"
# words = "hello, you, motherfucker"
# set the initial longest word as nil.
# if the new current word is longer than the previous current word, set the
# longest_word as the new current word

def longest_word(sentence)
  words = sentence.split(" ")  # words = "hello, you, motherfucker"

  idx = 0
  while idx < words.length  # 0 < 3
    current_word = words[idx] # current_word = words[0]

    longest_word = ""  # set initial longest_word as empty string.
    if current_word.length > longest_word.length
      longest_word = current_word
    end

    idx += 1
  end
    return longest_word
end

# sentence = "hello you motherfucker"
# longest_word(sentence) => "motherfucker"
# break the sentence into an array of words
# if the current word is bigger than the previous current word, return the new current word

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
