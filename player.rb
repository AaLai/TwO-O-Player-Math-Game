class Player
  attr_accessor :turn, :lives
  attr_reader :name

  def initialize(name)
    @lives = 3
    @name = name
  end

  def lose_life
    @lives = @lives - 1
  end

end


