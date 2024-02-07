require 'rails_helper'

describe Team, type: :model do
    describe "relationship" do
        it {should have_many :players}
    end
end