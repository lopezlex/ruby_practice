puts "hello world"

# string
# variable and assignments
movie = "Goonies"
rank = 10


# calling method object using the dot notation
puts movie.length
puts movie.reverse

# using single parameter of object method
puts movie.center(10)

# using multiple parameter
puts movie.ljust(30, '.')
puts movie.rjust(30, '.')

#using predicate methods
puts movie.start_with?('o')
puts movie.include?('o')
puts movie.empty?

# modifying existing string
puts movie.reverse!
puts movie

#method chaining
puts movie.capitalize.reverse

# concatenation using interpolation syntax
puts "#{movie.capitalize.ljust(30, '.')} #{rank}"

# calling current object using self
puts self
puts self.class

# method
# implementing DRY principle using created new method
# methods without parameter
# default parameter value
# local scope and global scope variables

def weekday
  current_time = Time.new
  current_time.strftime("%A")
end
puts weekday

def movie_listing(title, rank = 0)
  "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}."
  # 10
end
puts movie_listing('Goonies', 10)
a_title = "goldfinger"
puts movie_listing(a_title, 9)
puts movie_listing('move')



# class, intances or objects
# class is template or blueprint for creating objects
# instance method
# instance variable
# converting object to string using to_s
# state stored in instance variables
# behavior expressed as instance methods
# create an object from a class and call instance methods
# attributes and virtual attributes
# getter and setter methods

class Movie
  def initialize(title, rank = 0)
    @title = title.capitalize
    @rank = rank
    # puts "Created a movie object with title #{title} and rank #{rank}"
  end

  def thumbs_up
    @rank += 1
  end

  def thumbs_down
    @rank -= 1
  end

  def to_s
    "#{@title} has a rank of #{@rank}"
  end

end

movie1 = Movie.new("goonies", 10)
movie1.thumbs_up
puts movie1

movie2 = Movie.new("ghostbusters", 9)
movie2.thumbs_down
puts movie2

# excercise
class Player
  # attr_reader :player, :goal
  # attr_writer :player
  # attr_accessor :player
  attr_accessor :player, :goal

  def initialize(player, goal = 0)
    @player = player.capitalize
    @goal = goal
  end

  def player_goal
    @goal += 1
  end

  setter method
  def player=(new_player)
    @player = new_player
  end
  getter method
  def player
    @player
  end

  def to_s
    "#{@player} has #{@goal} goal."
  end

end

player1 = Player.new("ronaldo")
# player1.player_goal
# puts player1
# puts player1.player
# puts player1.goal
# player1.player = "lex"
# puts player1.player

player2 = Player.new("zlatan")
# player2.player_goal
# player2.player_goal
# puts player2
# puts player2.player
# puts player2.goal


# -------------------------------

