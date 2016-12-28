
def encrypt(str)
  pairs = []

      idx1 = 0
      idx2 = idx1 + 1     
      count = 1
      while str[idx1] == str[idx2]     
          count += 1      
          idx2 += 1
      end

      pair = [str[idx1], count]

  pairs.push(pair)
  return pairs
end




def one_off_words(str, word_list)
  nearby_words = []

  str_letters = str.split("")   # ["m", "o", "o", "r"]


  idx = 0
  while idx < word_list.length   # 0 < 4
    word = word_list[idx]     # word = word_list[0] = door 

    if str.length == word_list[idx].length 
     word_letters = word.split("")  # ["d", "o", "o" "r"]

      same_letters = word_letters.select do |l|   # ["o", "o", "r"]
      str_letters.include?(l) 
      end

      if same_letters.length == (str_letters.length - 1)
        word = word_letters.join("")
        nearby_words.push(word)
      end

    end  
    idx += 1
  end


  return nearby_words
end


one_off_words("moor", ["door", "moot", "boot", "boots"])