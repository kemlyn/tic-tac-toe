class Board
  attr_accessor :players

  def initialize
    @block = ['', '', '', '', '', '', '', '', '']
  end

  def display
    puts " #{@block[1]} | #{@block[2]} | #{@block[3]} "
    puts "-----------"
    puts " #{@block[4]} | #{@block[5]} | #{@block[6]} "
    puts "-----------"
    puts " #{@block[7]} | #{@block[8]} | #{@block[9]} "
  end

  def full?
    @block.none? {|block| block == '' || block == nil}
  end

  def update
    @block[input] = @player.marker
  end
end
