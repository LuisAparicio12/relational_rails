# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)

require 'rails_helper'

RSpec.describe 'players#index' do

    before :each do
        @orlando_city = Team.create!(name: 'Orlando City', num_of_wins: 200, has_won_championship: true)
        @inter_miami = Team.create!(name: 'Inter Miami', num_of_wins: 100, has_won_championship: false)
        @pato = Player.create!(name: 'Pato', goals_scored: 40, player_logged_in: false, team_id: @orlando_city.id)
        @messi = Player.create!(name: 'Lionel Messi', goals_scored: 8, player_logged_in: false, team_id: @inter_miami.id)
    end

    it 'can list players data for each column' do
        visit '/players'

        expect(page).to have_content(@pato.name)
        expect(page).to have_content(@messi.name)
    end
end