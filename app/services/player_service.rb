class PlayerService

  def self.all_players(team_id)
    response = Faraday.get("https://statsapi.web.nhl.com/api/v1/teams/#{team_id}/roster")
    all = JSON.parse(response.body, symbolize_names: true)
    all[:roster]
  end
end