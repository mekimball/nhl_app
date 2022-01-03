class TeamsController < ApplicationController
  def index
    @teams = TeamFacade.teams
  end

  def show
    render  = TeamFacade.single_team(params[:id])
    @team   = render[:teams].first
    @next_game = @team[:nextGameSchedule][:dates].first
  end
end