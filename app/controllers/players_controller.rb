class PlayersController < ApplicationController

  def index
    render  = TeamFacade.single_team(params[:team_id])
    @team   = render[:teams].first
    @players = PlayerFacade.players(params[:team_id])
  end
end