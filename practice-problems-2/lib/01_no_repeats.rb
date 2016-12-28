
# Outputs the years that don't repeat in the given range.
def no_repeats(year_start, year_end)
    no_repeat_years = []

    (year_start..year_end).collect do |year|
        no_repeat_years.push(year) if no_repeat?(year)
    end

    return no_repeat_years
end

# Helper function to determine if a year is a no repeat year. 
def no_repeat?(year)
  chars_seen = []

  years.to_s.each_char do |char|
    return false if chars_seen.include?(char)
    chars_seen << char
  end

  return true 
end


