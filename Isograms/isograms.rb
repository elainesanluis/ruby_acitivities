def is_isogram(str)
    lowercase_str = str.downcase
    lowercase_str.each_char do |char|
      return false if lowercase_str.count(char) > 1
    end
    true
  end
  
  puts is_isogram("cat")  
  puts is_isogram("mama")
  puts is_isogram("tanjiro") 