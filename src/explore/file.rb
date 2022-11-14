# require '../movie'

# movie1 = Movie.new("goonies", 10)
# movie2 = Movie.new("ghostbuster",9)
# movie3 = Movie.new("goldfinger")

# movies = [movie1, movie2, movie3]

# File.open("movies.txt") do |file|
#   file.each_line do |line|
#     puts line
#   end
# end


# File.readlines("movies.txt").each do |line|
#     puts line
# end

File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title},#{movie.rank}"
  end
end