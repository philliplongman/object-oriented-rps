require_relative "move"
require_relative "round"
require_relative "match"
require_relative "game"
require_relative "cli"

require "pry"

rps = Game.new(
  "Rock, Paper, Scissors",
  { name: "rock",     beats: "scissors", shortcut: "r"},
  { name: "paper",    beats: "rock",     shortcut: "p"},
  { name: "scissors", beats: "paper",    shortcut: "s"}
)

CLI.new(rps).play
