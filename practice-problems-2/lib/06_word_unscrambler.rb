# Write a function word_unscrambler that takes two inputs: 
# a scrambled word and a dictionary of real words. 
# Your program must then output all words that our scrambled word can unscramble to.



# Helper function to check if words are anagram of each other. 
def anagram?(s1, s2)
	s1_array = s1.split("")
	s2_array = s2.split("")
	if s1_array.sort == s2_array.sort
		return true
	else
		return false
	end
end


def word_unscrambler(str, words)
	# Create array to store words that are anagrams of the string.
	anagram_words = []

	# Go through each word in the given array and check if it's an anagram
	idx = 0
	while idx < words.length
		# If word is anagram, store in array
		if anagram?(str, words[idx])
			anagram_words << words[idx]
		end
		idx += 1
	end

	return anagram_words
end


