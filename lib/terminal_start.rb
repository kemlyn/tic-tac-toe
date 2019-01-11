class Start
  def play
    Game.new(Players.new, Board.new).play
  end
end
