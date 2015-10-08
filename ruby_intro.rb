# When done, submit this entire file.

# Part 1

def sum (array)
  # YOUR CODE HERE
  sum=0
  if array.size==0
	  return sum
  elsif array.size>0
	  sum=array.inject(0){|sum,i|sum+i} 
	  return sum
  end
end


def max_2_sum (array)
  # YOUR CODE HERE
  if array.size==0
	  return 0
  elsif array.size==1
	  return array[0]
  else
	sum=0
	sort_arr = array.sort
	sum=sort_arr[array.size-1]+sort_arr[array.size-2]
	return sum
  end
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  flag=0
  num=arr.size-1
  if arr.size==0
	  if n==0
		  flag=0
	  end
  else 
	  for i in 0..num
		  for k in i+1..num
			  if arr[i]+arr[k]==n
				  flag=1
			  end
		  end
	  end
  end
  if flag==1
	  return true
  else
	  return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  flag=1
  if s.empty?
	  flag=0
  elsif !(s =~/^[a-z]/i)
      flag=0
  elsif (s =~ /^[aeiou]/ )
		flag=0
  elsif (s=~/^[AEIOU]/)
		flag=0
  end
  if flag ==1
	  return true
  else
	  return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  flag=0
  if s.empty?
	  flag=0
  elsif s =~ /^[01]*00$/ || s == '0'
		flag=1
  end	
  if flag ==1
	  return true
  else
	  return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    if isbn.size == 0 || price<=0
      raise ArgumentError.new("bad argument")
   else
      @isbn = isbn
      @price = price
    end
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(value)
    @isbn = value
  end

  def price=(value)
    @price = value
  end

  def price_as_string
    "$"+format("%0.2f",@price)
  end
   
end

