class Match

  attr_reader :game

  def initialize(game)
    @game = game
    @round_number = 1
    @player_score = 0
    @computer_score = 0
  end

  def to_s
    "Player: #{player_score} / Computer: #{computer_score}. #{outcome}"
  end

  def winner
    return :player   if player_score == 3
    return :computer if computer_score == 3
  end

  def <<(round)
    raise ArgumentError, "Not a Round." unless round.is_a?(Round)

    @round_number   += 1
    @player_score   += 1 if round.winner == :player
    @computer_score += 1 if round.winner == :computer

    self
  end

  private

  attr_reader :round_number, :player_score, :computer_score

  def outcome
    winner ? "#{winner.to_s.capitalize} wins the game!" : "Round #{round_number}"
  end

end
