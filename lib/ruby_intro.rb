# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  s = 0
  arr.each{|n| s+=n}
  return s
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length ==0
    return arr[0]
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n? arr, n
  for i in 0..arr.length-2 do
    for j in i+1..arr.length-1 do
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  str = 'Hello, '
  str.concat(name)
  #puts str
  return str
end

def starts_with_consonant? s
  return false if s.length ==0
  return false if s[0].match(/\W/) != nil
  return false if s[0].match(/\d/) != nil
  arr = ['a','e','i','o','u','A','E','I','O','U']
  return false if arr.include?(s[0])
  return true
end

def binary_multiple_of_4? s
  return false if s.length == 0
  return false if s.match(/\D/) != nil
  return false if s.match(/[2-9]/) != nil
  num = s.to_i(2)
  if num % 4 == 0
    return true
  else
    return false
  end
end

# Part 3
class BookInStock
  attr_reader :isbn, :price
  def initialize(isbn_input, price_input)
    # Instance variables
    self.isbn = isbn_input
    self.price = price_input
  end
  def isbn=(isbn_input)
    if isbn_input.length ==0
      raise ArgumentError.new('Empty ISBN number.')
    else
      @isbn = isbn_input
    end
  end

  def price=(price_input)
    if price_input <= 0
      raise ArgumentError.new('Negative or zero price.')
    else
      @price = price_input
    end
  end

  def price_as_string
    p = @price.to_s.split('.')
    if p.length == 1
      return '$'+p[0]+'.00'
    else
      if p[1].length == 1
        return '$'+p[0]+'.'+p[1]+'0'
      else
        return '$'+p[0]+'.'+p[1]
      end
    end
  end

end
