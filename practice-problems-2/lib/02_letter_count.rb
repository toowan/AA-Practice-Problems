def letter_count(str)   # "cats are fun"

	letter_frequency = Hash.new(0)

	str.each_char do |char|
		letter_frequency[char] += 1 unless char == " "
	end

	letter_frequency

end
