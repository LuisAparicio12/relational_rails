# User Story 4, Child Show 

# As a visitor
# When I visit '/child_table_name/:id'
# Then I see the child with that id including the child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe 'players#show' do
    before :each do
        @orlando_city = Team.create!(name: 'Orlando City', num_of_wins: 200, has_won_championship: true)
        @inter_miami = Team.create!(name: 'Inter Miami', num_of_wins: 100, has_won_championship: false)
        @pato = Player.create!(name: 'Pato', goals_scored: 40, player_logged_in: false, team_id: @orlando_city.id)
        @messi = Player.create!(name: 'Lionel Messi', goals_scored: 8, player_logged_in: false, team_id: @inter_miami.id)
    end

    it 'players data for each column' do
        visit "/players/#{@pato.id}"
        expect(page).to have_content(@pato.name)
        expect(page).to have_content(@pato.goals_scored)
        expect(page).to have_content(@pato.player_logged_in)

        visit "/players/#{@messi.id}"
        expect(page).to have_content(@messi.name)
        expect(page).to have_content(@messi.goals_scored)
        expect(page).to have_content(@messi.player_logged_in)
    end
end