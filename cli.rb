require 'io/console'

class CLI

  def initialize(game)
    @game = game
    @match = Match.new game
  end

  def play
    puts "Let's play #{game}!"
    puts
    puts match
    play_round until match.winner
  end

  private

  attr_accessor :game, :match

  def play_round
    puts player_move = get_player_move
    puts round = Round.new(player_move, game.moves.sample)
    puts
    puts match << round
  end

  def get_player_move
    print "Choose your move [#{game.shortcuts}]: "

    input = STDIN.getch
    exit if input == "\u0003" # ctrl + c

    game.moves.find { |move| move.shortcut == input } || get_player_move
  end

end
