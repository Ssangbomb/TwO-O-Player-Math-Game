require './players'
require './questions'
require "./game"

class Mathgame 
  # attr_reader :players, :question
  # def initialize
  #   @player = [Players.new("player1"), Players.new("player2")]
  #   @question = Questions.new
  # end
  @player1 = Players.new("player1")
  @player2 = Players.new("player2")
  @game = Game.new
  # def player 

  # end


  # def next_player
  #   players[1]
  # end
  # #match the answer
  # def answer_is_right
  # inputanswer = gets.chomp.to_i
  #   if inputanswer == question.answer
  #     "Yes! You are correct."
  #   else 
  #     "Seriously? No!"
  #   end
  # end
until (@player1.current_life === 0 || @player2.current_life === 0)
    @current_player = (@game.turn % 2 == 0) ? @player2 : @player1 
    question = Questions.new
    question.makequestion(@current_player.name)
    inputanswer = gets.chomp.to_i
    if inputanswer == question.answer
      puts "Yes! You are correct."
    else 
      @current_player.lose
      if @current_player.current_life > 0 
        puts "Incorrect answer. You are remain #{@current_player.current_life}"
      else 
        puts "You lost. Try next"
      end
    end
    if @current_player.current_life > 0
      @game.position(@player1, @player2)
    end
    @game.nextgame
  end
    @game.winner(@player1, @player2)
  #when player answer wrong answer lose their life
  #how to make this in order like real game
end

# puts game1.current_player

# puts game1.next_player.name
# puts game1.question.makequestion
# puts game1.question.answer
# puts game1.answer_is_right