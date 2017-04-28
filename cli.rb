require 'io/console'

class CLI

  def initialize
    @game = Game.new
  end

  def play
    puts game
    play_round until game.winner
  end

  private

  attr_accessor :game

  def play_round
    puts move = get_player_move
    puts round = Round.new(move)
    puts
    puts game << round
  end

  def get_player_move
    print "Choose your move [r/p/s]: "

    case STDIN.getch
    when "r"
      :rock
    when "p"
      :paper
    when "s"
      :scissors
    when "\u0003" # ctrl + c
      exit
    else
      puts
      get_player_move
    end
  end

end
