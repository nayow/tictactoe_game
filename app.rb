require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'board'
require 'boardcase'
require 'show'

begin
    my_game = Game.new
    my_game.get_players_names
    until my_game.is_over?
        my_game.play_turn
        my_game.board_check
    end
    my_game.finish
end while my_game.replay?