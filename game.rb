class Game
  def initialize
  @player_1 = Player.new('Player 1')
  @player_2 = Player.new('Player 2')
  @winner
  end

  def game_start
    puts "Welcome #{@player_1.name} and #{@player_2.name}. The game begins now."
    turn
  end

  def show_lives
    puts "#{@player_1.name}: #{@player_1.lives}/3. 
    #{@player_2.name}: #{@player_2.lives}/3."
  end

  def who_is_winner
    if @player_1.dead
      print_winner(@player_2)
    elsif @player_2.dead
      print_winner(player_1)
    end
  end

  def print_winner(winner)
    puts "#{winner.name} has won the game with a score of #{winner.lives}/3."
    puts "----GAME OVER----"
    puts "Goodbye!"
    exit(0)
  end 

  def turn
    @player_1.ask_question
    who_is_winner
    @player_2.ask_question
    who_is_winner
    show_lives
    puts "----NEW TURN----"
    turn
  end

end
