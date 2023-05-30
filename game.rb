class Game
  attr_accessor :turn
  def initialize()
    @turn = 1
  end

  def nextgame 
    @turn += 1
  end 

  def winner(player1, player2)
    gamewinner = player1.current_life > player2.current_life ? player1 : player2
    puts "Game winner #{gamewinner.name}"
  end

  def position(player1, player2)
    puts "#{player1.name}: #{player1.current_life} / 3 #{player2.name}: #{player2.current_life} / 3" 
  end
end
