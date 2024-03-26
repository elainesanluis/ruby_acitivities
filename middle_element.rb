def middle(x)
    sorted = x.sort
    x.index(sorted[1])
  end
  

  p middle([2, 3, 1])  
  p middle([5, 10, 14]) 
  p middle([14, 5, 10]) 
  