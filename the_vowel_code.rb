#1
def encode(x)
    vowel = x.tr("aeiou", "12345")
    return vowel
  end

  puts encode("hello")

#2
def decode(x)
    vowel = x.tr("12345","aeiou")
    return vowel
  end

  puts decode("h3 th2r2")   