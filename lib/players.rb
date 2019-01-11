class Players
  attr_reader :player1, :player2

  def player1
    @marker = 'X'
  end

  def player2
    @marker = 'O'
  end

  def move
    puts "Please enter 1 - 9:"
    gets.chomp
  end
end
