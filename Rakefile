$:.unshift File.dirname(__FILE__)+ 'lib'
require "bundler/gem_tasks"

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecuta TicTacToe juego versus jugador_listo"
task :smart do
sh "ruby -Ilib bin/game.rb"
end

desc "Ejecuta TicTacToe juego versus jugador_tonto"
task :dumb do
sh "ruby -Ilib bin/game.rb -d"
end

desc "Ejecuta rspec con --format documentation"
task :doc do
  sh "rspec -Ilib spec/*.rb --format documentation"
end

desc "Ejecuta los test de jugador_humano"
task :hp_test do
sh "ruby -Ilib test/test_humanplayer.rb"
end

desc "Ejecuta los test de jugador_listo"
task :sp_test do
sh "ruby -Ilib test/test_smartplayer.rb"
end

desc "Ejecuta los test de jugador_tonto"
task :dp_test do
sh "ruby -Ilib test/test_dumbplayer.rb"

desc "Ejecuta TicTacToe con dos jugadores diferentes"
task :player, :x_player, :o_player do |player, args|
  x_player = args[:x_player] || 'human'
  o_player = args[:o_player] || 'minimax'
  sh "ruby -Ilib bin/game_players.rb #{x_player} #{o_player}"
end

end
