def remove_vowels(x)
    vowels = 'aeiouAEIOU'
    comment = ''
  
    x.each_char do |char|
      vowels_found = vowels.include?(char)
      comment += char unless vowels_found
    end
  
    comment
  end
  
  # Test the method
  input = "Trolls are attacking!"
  comment = remove_vowels(input)
  puts comment
  