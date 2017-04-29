require_relative "move"
require_relative "round"
require_relative "match"
require_relative "game"
require_relative "cli"

require "pry"

sps = Game.new(
  "Spock, Paper, Scissors",
  { name: "kirk",  beats: "spock", shortcut: "k"},
  { name: "spock", beats: "bones", shortcut: "s"},
  { name: "bones", beats: "kirk",  shortcut: "b"}
)

CLI.new(sps).play
