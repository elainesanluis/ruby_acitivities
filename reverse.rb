def reverse(x)
    reversed = ""
    (x.length - 1).downto(0) do |index|
        reversed << x[index]
    end
    reversed
  end
  

  p reverse("welcome")
  p reverse("delta")