# Using each method

def is_isogram(x)
    check = x.downcase
    check.each_char do |char|
      return false if check.count(char) > 1
    end
    true
  end

# Using loop method
  def is_isogram(x)
    check = x.downcase
    for i in 0...x.length
        for j in (i + 1)...x.length
            if check[i] == check[j]
                return false
            end
          end
        end
        return true
        end

puts is_isogram("cat")  
puts is_isogram("mama")
puts is_isogram("tanjiro") 