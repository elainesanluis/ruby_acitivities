def remove_vowels(x)
    vowels = 'aeiouAEIOU'
    comment = ''
    
    x.each_char do |character|
      vowels_found = false
  
      vowels.each_char do |vowel|
        if character == vowel
          vowels_found = true
          break  
        end
      end
  
      comment += character unless vowels_found
    end
    
    comment
  end
  
  # Test the method
  input = "Trolls are attacking!"
  comment = remove_vowels(input)
  puts comment
  