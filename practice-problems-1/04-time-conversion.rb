# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)

  hours = 0
  while minutes >= 60
    hours += 1
    minutes -= 60
  end

  if minutes < 10
    minutes = '0' + minutes.to_s
  elsif minutes < 0
    return nil
  end

  new_time = hours.to_s + ':' + minutes.to_s
  return new_time
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(9) == "0:09": ' + (time_conversion(9) == '0:09').to_s)
puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(125) == "2:05": ' + (time_conversion(125) == '2:05').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
