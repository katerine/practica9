require "gema"

if __FILE__ == $0
  if (ARGV.size == 2)
player1 = case ARGV[0].downcase
when "smart" then Gema::Smartjugador
when "minimax" then Gema::Minimaxjugador
when "dump" then Gema::Dumpjugador
when "humano" then Gema::Humanojugador
else Gema::Humanojugador
end

player2 = case ARGV[1].downcase
when "smart" then Gema::Smartjugador
when "minimax" then Gema::Minimaxjugador
when "dump" then Gema::Dumpjugador
when "humano" then Gema::Humanojugador
else Gema::Humanojugador
end

    game = Gema::Game.new(player1, player2, false)
   game.play
else
puts "Usage: ruby -Ilib bin/game_players.rb player_x player_o"
end
end
