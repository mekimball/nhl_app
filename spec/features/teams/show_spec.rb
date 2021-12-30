require 'rails_helper'

describe 'Team Index', type: :feature do
  before do
    @teams = TeamFacade.teams
    visit team_path(14)
  end

  it 'shows team info', :vcr do
    expect(page).to have_content('Tampa Bay Lightning')
    expect(page).to have_content('City: Tampa')
    expect(page).to have_content('Abbreviation: TBL')
    expect(page).to have_content('Venue: AMALIE Arena')
    expect(page).to have_content('First Year of Play: 1991')
    expect(page).to have_content('Division: Atlantic')
    expect(page).to have_link('Team Roster')
  end

  it 'can link to team roster', :vcr do
    click_link('Team Roster')
    save_and_open_page
    
    expect(current_path).to eq(team_players_path(14))
  end
end