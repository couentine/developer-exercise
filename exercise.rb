
class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
def self.marklar(str)
   array = str.scan(/[\w'-]+|[[:punct:]]+/)
   array.each_with_index do |x, ind|
    if x.length > 4
     if x != x.downcase
     array[ind] = 'Marklar'
     else
     array[ind] = 'marklar'
      end    
     end
    end
    return array.slice_before{|s| !s.start_with?(".", "?", "!")}.map{|a| a.join("")}.join(" ")

  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
  a = 0
  b = 1
   x = []
   f = []
     # Compute Fibonacci number in the desired position.
     nth.times do
         temp = a
         a = b
         x << a
         # Add up previous two numbers in sequence.
         b = temp + b
   end

    x.each do |z|
     if z % 2 == 0
       f << z


       end
     end
      return f.sum
  end
end