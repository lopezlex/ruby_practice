
# arrays is an ordered list of object references

seats = ['kermit', 'fozzie', 'gonzo']

puts seats[2]

# array, initializing array, array methods
# using percent w syntax for initializing arrays with single words
# initializing array with objects
# built-in iterator method for array


seats = %w(kermit fozzie gonzo)
puts seats[0]

seats = Array.new
seats[0] = 'kermit'
seats[1] = 'alex'
seats[2] = 'andre'
puts seats.size
# puts seats.push('mark')
# puts seats.pop
# puts seats.pop


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

class Playlist
  def initialize(name)
    @name = name
    @movies = []
  end

  def add_movie(movie)
    @movies << movie #to append
  end

  def play
    puts "#{@name}'s playlist:"
    # puts @movies
    
    @movies.each do |movie|
      movie.thumbs_up
      puts movie
    end
  end
end


movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("ghostbuster", 9)
movie3 = Movie.new("goldfinger")

# movies = [movie1, movie2, movie3]
# movies.each do |movie|
#   movie.thumbs_up
#   puts movie
# end


# objects-interacting
# using method parameter with objects
# separating files and to use other relative files we import them using require_relative syntax
# guarding driver codes in specific file which applicable only in it
# unit testing
# use rspec in testing
# if statement and case statement



playlist1 = Playlist.new("kermit")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Fozzie")
playlist2.add_movie(movie3)
movie4 = Movie.new("gremlins", 15)
playlist2.add_movie(movie4)
playlist2.play

# exercise

class Player
  def initialize(name, goal = 0)
    @name = name.capitalize
    @goal = goal
    # puts "Created a movie object with title #{title} and rank #{rank}"
  end

  def thumbs_up
    @goal += 1
  end

  def thumbs_down
    @goal -= 1
  end

  def to_s
    "#{@name} has #{@goal} goal."
  end

end

class Game
  def initialize(team)
    @team = team
    @players = []
  end

  def add_player(player_record)
    @players << player_record #to append
  end

  def play
    puts "#{@team}'s team:"
    # puts @movies
    
    @players.each do |plays|
      plays.thumbs_up
      puts plays
    end
  end
end

player1 = Player.new("Ronaldo", 10)
player2 = Player.new("Messi", 9)
player3 = Player.new("zlatan", 8)

game1 = Game.new("france")
game1.add_player(player1)
game1.add_player(player2)
game1.add_player(player3)
game1.play

game2 = Game.new("brazil")
game2.add_player(player3)
player4 = Player.new("lex", 50)
game2.add_player(player4)
game2.play