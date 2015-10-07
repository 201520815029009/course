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
	array.sort
	sum=array[array.size-1]+array[array.size-2]
	return sum
  end
end


def sum_to_n? arr, n
  # YOUR CODE HERE
  flag=0
  num=arr.size-1
  if arr.size==0
	  if n==0
		  flag=1
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
  string="Hello,"+name
  return string
end

def starts_with_consonant? s
  # YOUR CODE HERE
  flag=1
  if s.empty?
	  flag=1
  elsif  if(s =~ /^[aeiou]/ )
		flag=0
	   end
  elsif  if(s=~/^[AEIOU]/)
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
  elsif  if(s=~/[0-1]/ )
	if( s =~/00\Z/)
		flag=1
	end	
end	
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
   def initialize(isbn, price)
	begin 
	 raise "Bad arguement" if isbn.empty?||price<=0
	 @book_isbn=isbn
	 @book_price=price
	end  
   end
    
  def set_isbn(value)
      @book_isbn = value
   end
   
   def set_price(value)
      @book_price = value
   end

     def get_isbn()
      @book_isbn
   end
   
   def get_price()
      @book_price
   end

   def price_as_string
	   price=@book_price+0.0
	   s="$"+price.to_s+"0"
	   return s
   end
   
end

