# User Story 5, Parent Children Index 

# As a visitor
# When I visit '/parents/:parent_id/child_table_name'
# Then I see each Child that is associated with that Parent with each Child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe 'team_players#index' do
    before :each do
        @orlando_city = Team.create!(name: 'Orlando City', num_of_wins: 200, has_won_championship: true)
        @pato = @orlando_city.players.create!(name: 'Pato', goals_scored: 40, player_logged_in: false, team_id: @orlando_city.id)
    end

    it 'displays each player that is associated with a team' do
        visit "/teams/#{@orlando_city.id}/players"
    
        expect(page).to have_content(@pato.name)
        expect(page).to have_content(@pato.goals_scored)
        expect(page).to have_content(@pato.player_logged_in)
    end
end