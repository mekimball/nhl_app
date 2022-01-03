class PlayerService

  def self.all_players(team_id)
    response = Faraday.get("https://statsapi.web.nhl.com/api/v1/teams/#{team_id}/roster")
    all = JSON.parse(response.body, symbolize_names: true)
    all[:roster]
  end

  def self.player_details(player_id)
    response = Faraday.get("https://statsapi.web.nhl.com/api/v1/people/#{player_id}")
    all = JSON.parse(response.body, symbolize_names: true)
    all[:people]
  end
end