class TeamService
  def self.all_teams
    response = Faraday.get("https://statsapi.web.nhl.com/api/v1/teams")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.one_team(team_id)
    response = Faraday.get("https://statsapi.web.nhl.com/api/v1/teams/#{team_id}?expand=team.schedule.next")
    JSON.parse(response.body, symbolize_names: true)
  end
end