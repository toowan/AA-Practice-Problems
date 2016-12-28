# Write a function, `rec_intersection(rect1, rect2)` and returns the #intersection of the two.

# Rectangles are represented as a pair of coordinate-pairs: the bottom-left and top-right coordinates (given in `[x, y]` notation).

# Hint: You can calculate the left-most x coordinate of the intersection 
# by taking the maximum of the left-most x coordinate of each rectangle, 
# and the top-most y coordinate of the intersection by taking the minimum # of the top most y coordinate of each rectangle.


def rec_intersection(rect1, rect2)
  # Find the first set of coordinates (left-bottom) of the intersection:

  # Take x-coordinates of both rectangles' left side and keep the bigger value.
  x_min = [rect1[0][0]], rect2[0][0]].max 
  # Take y-coordinates of both rectangles' left side and keep the bigger value.
  y_min = [rect1[0][1]], rect2[0][1]].max 

  # Find the second set of coordinates (top-right) of the intersection:

  # Take x-coordinates of both rectangles' right side and keep the bigger value.
  x_max = [rect1[1][0]], rect2[1][0]].max 
  # Take y-coordinates of both rectangles' right side and keep the bigger value.
  y_max = [rect1[1][1]], rect2[1][1]].max 

  # Return nil if there's no intersection
  return nil if ((x_max < x_min) || (y_max < y_min))

  # Return coordinates of intersection
  return [[x_min, y_min], [x_max, y_max]]

end


=begin
  
Helpful Things to Remember: 

- Plot out the coordinates and draw the rectangles on a piece of paper first.
- Try not to confuse the (x,y) coordinates with arrays. 
- Use max and min to get the left and right coordinates of the intersection, respectively.   
- To access a value of a 2D array, use a[i][j], where i is the index of a, and j is the index of a[i] array.

=end