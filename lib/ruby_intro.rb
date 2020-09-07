# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).reduce(0,:+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
    return false
  end
  
  if arr.length() == 1
    return false
  end
  
  l = arr.length()
  
  for i in 0..(l-1) do
    for j in (i+1)..l do
      
      val = arr[i]
      val2 = arr[j]
      
      if arr[i] == nil
        val  = 0
      end
      
      if arr[j] == nil
        val2 = 0
      end
      
      c = val + val2
      if c==n
        return true
      end  
    end  
  end
  
  return false
  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  return str + name.to_s 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  str = s
  if str.delete('01') != ""

    return false
  elsif s.length == 0
    return false
      
  end
  
  if s.to_i(10) % 4 == 0
    return true
  else 
    return false
  end  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn , price)
    raise ArgumentError.new("Expected an non-empty string, got an empty string") if isbn == ""
    raise ArgumentError.new("Expected a positive value, got an invalid value") if price <=0
    @isbn = isbn
    @price = price
  end
  
  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    "$#{format("%.2f", @price)}"
  end  

  
end
