require './player'
require './question'

class Game
  attr_accessor :player_2, :player_1, :current_turn

  def initialize
    @dice_roll = rand(10)
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_turn = 0
  end

  def run
    puts "Welcome to the number game"
    first_turn
    while game_over_check
      if current_turn == 0 then
        turn(@player_1)
      else
        turn(@player_2)
      end
      next_turn
    end
    puts "----------- Game over ------------"
    puts "   Summary "
    puts "Player one lives #{player_1.lives}"
    puts "Player two lives #{player_2.lives}"
    puts "----------------------------------"
    exit
  end

  def turn(player)
    name = player.name
    puts "------------ #{name} ------------"
      question = Question.new("#{name}")
      if question.ask_question == true then
        puts "Nice work!"
      else
        puts "Close but not quite"
        player.lose_life
      end
  end

    # make players
    # choose which player goes first
    # ask a question
    # player input answer
    # congrats or reduce points
    # if player lives to go zero, end game otherwise...
    # repeats

  def first_turn
    @dice_roll >= 5 ? @current_turn = 0 : @current_turn = 1
  end

  def next_turn
    @current_turn == 0 ? @current_turn = 1 : @current_turn = 0
  end


  def game_over_check
    if (player_1.lives == 0 || player_2.lives == 0) then
      false
    else
      true
    end
  end



end

test = Game.new

test.run


