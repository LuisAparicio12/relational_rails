# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

require 'rails_helper'

RSpec.describe 'teams#show' do
    before :each do
        @orlando_city = Team.create!(name: 'Orlando City', num_of_wins: 200, has_won_championship: true)
        @inter_miami = Team.create!(name: 'Inter Miami', num_of_wins: 100, has_won_championship: false)
    end

    it 'teams data for each column' do
        visit "/teams/#{@orlando_city.id}"
        
        expect(page).to have_content(@orlando_city.name)
        expect(page).to have_content(@orlando_city.num_of_wins)
        expect(page).to have_content(@orlando_city.has_won_championship)
        visit "/teams/#{@inter_miami.id}"
        expect(page).to have_content(@inter_miami.name)
        expect(page).to have_content(@inter_miami.num_of_wins)
        expect(page).to have_content(@inter_miami.has_won_championship)
    end
end