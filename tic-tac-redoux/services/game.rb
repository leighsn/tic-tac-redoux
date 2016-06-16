class Game
attr_accessor :game_board, :computer, :text, :cpu_player, :score, :board_actions

  def initialize
    self.game_board = Board.new
    self.computer = Computer.new
    self.cpu_player = ComputerQuerier.new
    self.player_actions = PlayerQuerier.new
    self.board_actions = BoardModifier.new
    self.player = Player.new
  end

  def login_greeting
    puts "Welcome to Tic-Tac-Toe! Please enter your name:"
  end

  def check_if_player_has_played_before
    self.player_actions.previously_played?(gets.chomp)
  end

  def create_new_player
    self.player_actions.new_player
  end

  def set_tokens_for_both_players
    self.player_actions.set_player_token
    self.cpu_player.set_computer_token
  end

  def print_game_board
    self.game_board.print_board
  end

  def player_turn
    self.player_actions.get_player_move
    self.board_actions.set_square
  end

  def computer_turn
    self.cpu_player.make_move
  end

  def check_for_winning_move
    self.game_board.scan_squares_for_win
  end

  def check_game_draw
    self.game_board.board_full?
  end

  def game_over
    self.text.win_message
  end

  def ask_play_again?
    self.text.play_again?
  end

  def reset_game
    #reset game
  end

  def save_score
    self.score.update_score
  end

end
