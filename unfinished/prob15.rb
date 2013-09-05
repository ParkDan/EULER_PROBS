# unfinished
# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?

def grid_routes(length)
traversal_routes=[]
route=[]
grid_array=[""]*length
grid_array=[grid_array]*length

(0..length).each|x|
  (0..length).each|y|
    grid_array[x][y]="."



