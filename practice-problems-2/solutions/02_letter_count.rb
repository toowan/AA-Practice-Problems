def letter_count(str)
  counts = Hash.new(0)

  str.each do |char|
    counts[char] += 1 unless char == " "
  end
  counts
end
