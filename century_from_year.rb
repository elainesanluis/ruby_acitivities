def century(x)
    year = x - 1
    century = year / 100
    century = century + 1
    return century
  end
  
 
  puts century(1705).inspect
  puts century(1900).inspect
  puts century(1601).inspect
  puts century(2000).inspect