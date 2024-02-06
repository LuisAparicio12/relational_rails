# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system

require 'rails_helper'

RSpec.describe 'teams#index' do

    before :each do
        @orlando_city = Team.create!(name: 'Orlando City', num_of_wins: 200, has_won_championship: true)
        @inter_miami = Team.create!(name: 'Inter Miami', num_of_wins: 100, has_won_championship: false)
    end

    it 'see the name of each team' do
        visit '/teams'

        expect(page).to have_content(@orlando_city.name)
        expect(page).to have_content(@inter_miami.name)
    end
end