
snacks_carbs = {:candy => 30, :pretzel => 100, :soda => 50}

snacks_carbs = {candy:30, pretzel: 100, soda: 50}
# puts snacks_carbs[:candy]

# snack_carbs2 = Hash.new
# snack_carbs2[:candy] = 15
# snack_carbs2[:pretzel] = 100
# snack_carbs2[:popcorn] = 50
# puts snack_carbs2
# puts snack_carbs2.keys
# puts snack_carbs2.values

# do block
snacks_carbs.each do |name, carbs|
  puts "#{name} has #{carbs} carbs"
end

# curly bracket block
snacks_carbs.each {|name, carbs| puts "#{name} has #{carbs} carbs"}

# hash values accumulation
puts snacks_carbs.values.reduce {|acc, carbs| acc + carbs}
puts snacks_carbs.values.reduce(0, :+)