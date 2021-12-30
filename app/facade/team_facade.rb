class TeamFacade

  def self.teams
    teams = TeamService.all_teams[:teams]
    teams.map do |team|
      Team.new(team)
    end
  end

  def self.single_team(team_id)
    TeamService.one_team(team_id)
  end
end