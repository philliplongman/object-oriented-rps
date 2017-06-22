class Round

  def initialize(player_move, computer_move)
    @player_move = player_move
    @computer_move = computer_move

    raise ArgumentError, "Invalid key(s)." unless player_move && computer_move
  end

  def to_s
    "Player chooses #{player_move}. Computer chooses #{computer_move}. #{outcome}"
  end

  def winner
    return :player   if player_move.beats? computer_move
    return :computer if computer_move.beats? player_move
  end

  private

  attr_reader :player_move, :computer_move

  def outcome
    winner ? "#{winner.to_s.capitalize} wins the round." : "A tie."
  end

end
