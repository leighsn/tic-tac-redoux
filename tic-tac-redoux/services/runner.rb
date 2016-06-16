require_relative '../models/board.rb'
require_relative '../models/computer.rb'
require_relative '../models/player.rb'
require_relative '../models/square.rb'
require_relative 'player_querier.rb'
require_relative 'game.rb'
require_relative 'computer_querier.rb'
require_relative 'board_modifier.rb'

class Runner
attr_accessor :game

  def initialize
    self.game = Game.new
  end

  self.game.login_greeting
  self.game.check_if_player_has_played_before

end

Runner.new
