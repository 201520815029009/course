module FunWithStrings
  def palindrome?
    # your code here
    x=self.downcase
    x=x.gsub(/\W/, '')
    if x.reverse.eql?x
	 return true
    else 
	 return false
    end
  end
  
  def count_words
    # your code here
    counter = Hash.new(0)
    str=self.gsub(/\W/," ").downcase
    str.split(" ").each { |val| counter[val]+=1 }
    return counter
  end
  
  def anagram_groups
    # your code here
    output_array = Array.new(0)
    words=self.split(" ")
    words.each do |w1|
	  temp_array = []
	  words.each do |w2|
		  if (w2.downcase.split(//).sort == w1.downcase.split(//).sort)
			  temp_array.push(w2)
		  end
	  end
	  output_array.push(temp_array)
    end
    return output_array.uniq
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
