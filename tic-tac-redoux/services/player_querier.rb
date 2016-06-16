class PlayerQuerier
attr_accessor
  def initialize

  end

  def previously_played?(name)
    Player.player_list.find {|player| player.name = name}
  end

end
