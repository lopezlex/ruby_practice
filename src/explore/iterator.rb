# def three_times
#   puts "Ready"
#   yield(1)
#   puts "Set"
#   yield(2)
#   puts "Go"
#   yield(3)
# end
# three_times { |num| puts num}


# def compute
#   # associated block
#   puts yield
# end

# compute do
#   "hello"
# end


def compute
  if block_given?
    puts yield
  else puts "Does not compute"
  end
end

compute { 3.14 }

numbers = (1..10).to_a

# def my_select(array)
#   results = []

#   array.each do |element|
#     results << element if yield(element)
#   end
#   results
# end
# puts my_select(numbers) {|n| n.even?}

def my_select(array)
  results = []

  array.each do |element|
    results << element if element.even?
  end
  results
end
puts my_select(numbers)


# once
# twice
# three_times



