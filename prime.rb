# Add code here!
def prime?(int)
  is_it_prime = []
  
  if int != 0 
    int == 2 ? divide_range = (2..int.abs).to_a : 
    divide_range = (2..int.abs-1).to_a
    
    divide_range.each { |num|
      if int%num == 0 && int != 2
        is_it_prime << false
      else
        is_it_prime << true
      end
    }
  end
  if int <= 1 
    is_it_prime = false
  else
    is_it_prime = !is_it_prime.include?(false)
  end
  is_it_prime
end

#their solution
def prime?(num)
  if num < 0 or num == 0 or num == 1
    return false
  else
    (2..num-1).to_a.all? do |possible_factor| #what does to_a.all? do
      num % possible_factor != 0
    end
  end
end

puts prime?(105557)

