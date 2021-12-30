class TeamsController < ApplicationController
  def index
    @teams = TeamFacade.teams
  end

  def show
    render  = TeamFacade.single_team(params[:id])
    @team   = render[:teams].first
  end
end