class PlayerFacade

  def self.players(team_id)
    players = PlayerService.all_players(team_id)
    players.map do |player|
      Player.new(player)
    end
  end

  def self.player(player_id)
    PlayerService.player_details(player_id)
  end
end