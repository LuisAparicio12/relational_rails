class TeamPlayersController < ApplicationController
    def index
        @team_players = Team.find(params[:team_id]).players
        # require 'pry' ; binding.pry
    end
end