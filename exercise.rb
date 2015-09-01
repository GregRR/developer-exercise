class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.gsub!(/\b[a-z]\w{4,}?\b/, "marklar")
		str.gsub!(/\b[A-Z]\w{4,}?\b/, "Marklar")
    return str
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
  	if nth < 3
  		return 0
  	else
			fib_seq = [1, 1] #start of meaningful sequence
			nth = nth - 2 #account for defaults already there
			nth.times do
				fib_seq << fib_seq[-2] + fib_seq[-1]
			end
		end
		
		#delete the odd numbers and return sum
		fib_seq.delete_if {|n| n.odd? }
		sum = fib_seq.inject(:+)
		return sum
  end
end
