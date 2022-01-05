require 'rails_helper'

describe 'Player Show', type: :feature do
  before do
    @player = PlayerFacade.player(8476453)
    visit player_path(8476453)
  end

  it 'can show player info', :vcr do
    expect(page).to have_content('Nikita Kucherov') 
  end 
end