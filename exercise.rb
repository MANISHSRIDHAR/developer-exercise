class Exercise
    # Assume that "str" is a sequence of words separated by spaces.
    # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
    # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
    def self.marklar(str)
      str.gsub(/\b[A-Za-z']+\b/) do |word|
        if word.length > 4
          if word[0] =~ /[A-Z]/
            "Marklar" + (word[-1] =~ /[[:punct:]]/ ? word[-1] : "")
          else
            "marklar" + (word[-1] =~ /[[:punct:]]/ ? word[-1] : "")
          end
        else
          word
        end
      end
    end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib = [1, 1]
    (nth - 2).times { fib << fib[-1] + fib[-2] }
    fib.select(&:even?).sum
  end
end
