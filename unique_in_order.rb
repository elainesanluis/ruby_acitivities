def unique_in_order(x)
    if x.is_a?(String)
        x = x.chars
      end      
  
    result = []
    previous = nil
  
    x.each_with_object(result) do |element, array|
      array << element unless previous == element
      previous = element
    end
  
    result
  end

#Test the method
puts unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
puts unique_in_order('ABBCcAD') == ['A', 'B', 'C', 'c', 'A', 'D']
puts unique_in_order([1,2,2,3,3]) == [1,2,3]

  