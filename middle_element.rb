# You need to create a function that when provided with a triplet, 
# returns the index of the numerical element that lies between the
#  other two elements. The input to the function will be an array
#   of three distinct numbers. (Haskell: a tuple)
# Example:

# gimme([2,3,1]) => 0 2 is the number that fits between 1 and 3 and the index of 2 in the input array is 0.
# gimme([5,10,14]) => 1 10 is the number that first between 5 and 14 and the index of 10 in the input array is 1.

def middle(x)
    sorted = x.sort
    x.index(sorted[1])
  end
  

  p middle([2, 3, 1])  
  p middle([5, 10, 14]) 
  p middle([14, 5, 10]) 
  