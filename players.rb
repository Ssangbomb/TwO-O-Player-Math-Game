class Player
  PLAYER_LIFE = 3

  attr_accessor :name

  def initialize(name)
    @name = name
    @current_life = PLAYER_LIFE
  end

  def lose
    @current_life = @current_life - 1
    "#{name} : #{@current_life} / #{PLAYER_LIFE}"
  end
end

player1 = Player.new("player1")
player2 = Player.new("player2")

puts player1.lose
puts player1.lose