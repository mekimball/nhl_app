require 'rails_helper'

describe 'Team Index', type: :feature do
  before do
    @teams = TeamFacade.teams
    visit teams_path
  end

  it 'shows all teams', :vcr do
    
    @teams.each do |team|
      expect(page).to have_content(team.name)
    end
  end
  
  it 'can link to the team page', :vcr do
    click_link('Tampa Bay Lightning')
    
    expect(current_path).to eq team_path(14)
  end
end