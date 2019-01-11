WIN = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]].freeze

class Game
  attr_accessor :players, :board

  def initialize(board = Board.new, player = Players.new)
    @score = 0
    @board = board
    @player = player
  end

  def win
    @player.move == WIN
  end

  def lose
    @player.move != WIN
  end

  def draw
    @board.full? && !win
  end

  def end?
    turn == win || draw
  end

  def turn
    move = Players.new.move
    input = move.to_i
    if input.between?(1, 9) == true
      @board.update(input, @player)
      @board.display
    elsif input.between?(1, 9) == false
      puts 'invalid move'
      turn
    else
      puts 'position taken, try again'
      turn
    end
  end

  def play
    @board.display
    if end?
      puts 'want to play again? (yes/no)'
      answer = gets.chomp
      if answer == 'yes'
        Game.new.play
      elsif answer == 'no'
      else
        'invalid response'
      end
    end
  end
end
