require 'gema'

  if ARGV.size > 0 and ARGV[0] == "-d"
    game = Gema::Game.new Gema::HumanPlayer,
                   Gema::DumbPlayer
  else
    game = Gema::Game.new Gema::HumanPlayer,
                   Gema::SmartPlayer
  end
  game.play
