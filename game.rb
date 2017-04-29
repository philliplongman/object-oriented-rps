class Game

  attr_reader :name, :moves

  def initialize(name, *moves)
    @name = name
    @moves = moves.map { |opt| Move.new opt }
  end

  def to_s
    name
  end

  def shortcuts
    moves.map(&:shortcut).join("/")
  end

end
