module WaldorfAndStatler

  # creating module method with self
  def self.roll_die
    rand(1..6)
  end

  def self.review(movie)
    number_rolled = roll_die

      case number_rolled
      when 1..2
        movie.thumbs_down
        puts "#{movie.title} got a thumbs down."
      when 3..4
        puts "#{movie.title} was skipped."
      else
        movie.thumbs_up
        puts "#{movie.title} got a thumbs up!"
      end
  end
end

# blocks

# numbers.select do |number|
#   number > 5
# end
# number.select { |number| number > 5}
# movies.each do |movie|
#   movie.thumbs_ups
#   puts movie
# end

# iterator method
# .times
# .upto()
# .each
# .select or .reject - return an array
# .partition - used in initializing with  two  variables
# .reduce - has to arguments -  the accumulator and elements
# .reduce(:+) - to sum up
# .reduce(:*) - to multiply

# converting numbers to array
# numbers = (1..10).to_a
# puts numbers

# hash is an indexed collection of object references



# refactoring code with module
# module, module constants and creating module methods with self
# iterator methods with do block and curly bracket block
# general comparison operator <=>
# converting range of numbers to array
# symbols, converting symbols to string and string to symbol
# structs
# scope resolution operator ::
# hash and hash accumulation