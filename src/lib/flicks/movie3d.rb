require_relative 'movie'

class Movie3D < Movie

  def initialize(title, rank, wow_factor)
    super(title, rank) # calls the initialize method
    @wow_factor = wow_factor
  end

  def thumbs_up
    @wow_factor.times {super}
    # @rank += (1 * @wow_factor)
  end

  def show_effect
    puts "Wow! " * @wow_factor
  end
end
movie3d = Movie3D.new('glee', 5, 20)
puts movie3d.title
puts movie3d.rank

movie3d.thumbs_up

puts movie3d.rank
puts movie3d

movie3d.show_effect


# [Movie3D, Movie, Object, Kernel, BasicObject]